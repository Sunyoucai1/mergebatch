const cds  = require('@sap/cds');
const http = require('http');

const DH  = 'com.riotinto.s4.batch.ZCLDeliveryHeaders';
const DI  = 'com.riotinto.s4.batch.ZCLDeliveryItems';

const SAP_CLIENT  = process.env.S4_CLIENT      || '510';
const DESTINATION = process.env.S4_DESTINATION || 'RD1CLNT510_HTTPS';

// ─── HTTP via BAS destination proxy (port 8887) ──────────────────────────────

function s4Request(method, path, { headers = {}, body } = {}) {
    return new Promise((resolve, reject) => {
        const targetUrl  = `http://secure-outbound-connectivity.webide-system/destinations/${DESTINATION}${path}`;
        const bodyBuf    = body ? Buffer.from(body) : undefined;
        const reqHeaders = {
            'Host':       'secure-outbound-connectivity.webide-system',
            'sap-client': SAP_CLIENT,
            'Connection': 'close',
            ...headers
        };
        if (bodyBuf) reqHeaders['Content-Length'] = bodyBuf.length;

        const net = require('net');
        const bodyStr     = bodyBuf ? bodyBuf.toString() : '';
        const headerLines = Object.entries(reqHeaders).map(([k, v]) => `${k}: ${v}`).join('\r\n');
        const raw         = `${method} ${targetUrl} HTTP/1.1\r\n${headerLines}\r\n\r\n${bodyStr}`;

        const socket = net.createConnection(8887, '127.0.0.1', () => socket.write(raw));
        let data = '';
        socket.on('data', chunk => data += chunk);
        socket.on('end', () => {
            const idx        = data.indexOf('\r\n\r\n');
            const head       = data.substring(0, idx);
            const body       = data.substring(idx + 4);
            const statusLine = head.split('\r\n')[0];
            const status     = parseInt(statusLine.split(' ')[1]);
            const resHeaders = {};
            head.split('\r\n').slice(1).forEach(l => {
                const sep = l.indexOf(': ');
                if (sep > 0) resHeaders[l.substring(0, sep).toLowerCase()] = l.substring(sep + 2);
            });
            resolve({ status, headers: resHeaders, data: body });
        });
        socket.on('error', reject);
    });
}

async function s4Get(path) {
    const res = await s4Request('GET', path);
    if (res.status !== 200) throw new Error(`S4 GET ${path} returned ${res.status}: ${res.data.substring(0, 200)}`);
    let body = res.data;
    if ((res.headers['transfer-encoding'] || '').includes('chunked')) {
        let decoded = '';
        let i = 0;
        while (i < body.length) {
            const lineEnd = body.indexOf('\r\n', i);
            if (lineEnd === -1) break;
            const chunkSize = parseInt(body.substring(i, lineEnd), 16);
            if (isNaN(chunkSize) || chunkSize === 0) break;
            decoded += body.substring(lineEnd + 2, lineEnd + 2 + chunkSize);
            i = lineEnd + 2 + chunkSize + 2;
        }
        body = decoded;
    }
    return JSON.parse(body);
}

function parseDate(val) {
    if (!val) return null;
    const ms = String(val).match(/\/Date\((\d+)\)\//);
    if (ms) return new Date(parseInt(ms[1])).toISOString().slice(0, 10);
    if (/^\d{4}-\d{2}-\d{2}/.test(String(val))) return String(val).slice(0, 10);
    return null;
}

// ─── S/4 Sync (rate-limited to once per 5 min) ───────────────────────────────

let lastSyncAt = 0;
const SYNC_TTL = 300_000;

async function syncFromS4() {
    const now = Date.now();
    if (now - lastSyncAt < SYNC_TTL) return;
    lastSyncAt = now;

    // Fetch items that have batch splits (HigherLevelItem filled = batch split child item)
    // We fetch all items from deliveries that have GI posted (GoodsMovementStatus = 'C')
    // and select relevant $expand to get batch info
    const itemFilter = encodeURIComponent("GoodsMovementStatus eq 'C'");
    const itemSelect = encodeURIComponent('DeliveryDocument,DeliveryDocumentItem,Material,ActualDeliveryQuantity,DeliveryQuantityUnit,Batch,DeliveryDocumentItemCategory,HigherLevelItem,StorageLocation,Plant');
    const itemData = await s4Get(
        `/sap/opu/odata/sap/API_OUTBOUND_DELIVERY_SRV;v=0002/A_OutbDeliveryItem?$filter=${itemFilter}&$select=${itemSelect}&$format=json`
    );
    const itemResults = itemData?.d?.results ?? itemData?.value ?? [];
    if (!itemResults.length) return;

    const deliveryDocs = [...new Set(itemResults.map(r => r.DeliveryDocument))];
    const hdrFilter    = encodeURIComponent(deliveryDocs.map(d => `DeliveryDocument eq '${d}'`).join(' or '));
    const hdrSelect    = encodeURIComponent('DeliveryDocument,DocumentDate,ShipToParty,HeaderGrossWeight,HeaderWeightUnit');
    const hdrData      = await s4Get(
        `/sap/opu/odata/sap/API_OUTBOUND_DELIVERY_SRV;v=0002/A_OutbDeliveryHeader?$filter=${hdrFilter}&$select=${hdrSelect}&$format=json`
    );
    const hdrResults = hdrData?.d?.results ?? hdrData?.value ?? [];

    // Fetch ship-to names from partner data for each unique ShipToParty
    const shipToParties = [...new Set(hdrResults.map(h => h.ShipToParty).filter(Boolean))];
    const shipToNameMap = new Map();
    for (const party of shipToParties) {
        try {
            const partnerFilter = encodeURIComponent(`SDDocument eq '${hdrResults.find(h => h.ShipToParty === party)?.DeliveryDocument}' and PartnerFunction eq 'WE'`);
            const partnerData   = await s4Get(
                `/sap/opu/odata/sap/API_OUTBOUND_DELIVERY_SRV;v=0002/A_OutbDeliveryPartner?$filter=${partnerFilter}&$expand=to_Address2&$format=json`
            );
            const partner = (partnerData?.d?.results ?? partnerData?.value ?? [])[0];
            if (partner?.to_Address2?.BusinessPartnerName1) {
                shipToNameMap.set(party, partner.to_Address2.BusinessPartnerName1);
            }
        } catch (e) {
            // name enrichment is best-effort
        }
    }

    const headersToUpsert = hdrResults.map(hdr => ({
        deliveryDocument: hdr.DeliveryDocument,
        documentDate:     parseDate(hdr.DocumentDate),
        shipToParty:      hdr.ShipToParty      ?? '',
        shipToPartyName:  shipToNameMap.get(hdr.ShipToParty) ?? hdr.ShipToParty ?? '',
        totalWeight:      parseFloat(hdr.HeaderGrossWeight) || 0,
        weightUnit:       hdr.HeaderWeightUnit ?? '',
    }));

    const itemsToUpsert = itemResults.map(item => ({
        deliveryDocument:             item.DeliveryDocument,
        deliveryDocumentItem:         item.DeliveryDocumentItem,
        material:                     item.Material                     ?? '',
        actualDeliveryQuantity:       parseFloat(item.ActualDeliveryQuantity) || 0,
        deliveryQuantityUnit:         item.DeliveryQuantityUnit         ?? '',
        batch:                        item.Batch                        ?? '',
        deliveryDocumentItemCategory: item.DeliveryDocumentItemCategory ?? '',
        higherLevelItem:              item.HigherLevelItem              ?? '',
        storageLocation:              item.StorageLocation              ?? '',
        plant:                        item.Plant                        ?? '',
    }));

    await UPSERT.into(DH).entries(headersToUpsert);
    await UPSERT.into(DI).entries(itemsToUpsert);
    console.log(`[BATCH] Synced ${headersToUpsert.length} headers, ${itemsToUpsert.length} items from S/4`);
}

// ─── Service ──────────────────────────────────────────────────────────────────

module.exports = cds.service.impl(async function () {

    this.before('READ', 'DeliveryHeaders', async (req) => {
        try { await syncFromS4(); }
        catch (err) { console.error('[BATCH] S/4 sync failed:', err.message); }
    });

    this.after('READ', 'DeliveryHeaders', (results) => {
        const headers = Array.isArray(results) ? results : results ? [results] : [];
        for (const h of headers) {
            // canMerge: true when there are batch-split child items (higherLevelItem filled)
            const items = h.deliveryItems || [];
            h.canMerge = items.some(i => i.higherLevelItem && i.higherLevelItem.trim() !== '');
        }
    });

    this.on('mergeBatch', 'DeliveryHeaders', async (req) => {
        // TODO: implement actual Merge Batch action against S/4
        // Placeholder — returns stub success response
        const { deliveryDocument } = req.params[0];
        console.log(`[BATCH] mergeBatch action called for ${deliveryDocument} — not yet implemented`);
        return { success: false, message: 'Merge Batch action not yet implemented.' };
    });

});
