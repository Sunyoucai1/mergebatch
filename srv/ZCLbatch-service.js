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

async function syncDelivery(deliveryDocument) {
    console.log(`[BATCH] Syncing delivery ${deliveryDocument} from S/4...`);
    // Fetch header
    const hdrData = await s4Get(
        `/sap/opu/odata/sap/API_OUTBOUND_DELIVERY_SRV;v=0002/A_OutbDeliveryHeader('${deliveryDocument}')?$format=json`
    );
    const hdr = hdrData?.d ?? hdrData;
    if (!hdr?.DeliveryDocument) return;

    // Fetch items for this delivery
    const itemFilter = encodeURIComponent(`DeliveryDocument eq '${deliveryDocument}'`);
    const itemData   = await s4Get(
        `/sap/opu/odata/sap/API_OUTBOUND_DELIVERY_SRV;v=0002/A_OutbDeliveryItem?$filter=${itemFilter}&$format=json`
    );
    const itemResults = itemData?.d?.results ?? itemData?.value ?? [];

    const headerToUpsert = {
        deliveryDocument:     hdr.DeliveryDocument,
        documentDate:         parseDate(hdr.DocumentDate),
        shipToParty:          hdr.ShipToParty              ?? '',
        shipToPartyName:      hdr.ShipToParty              ?? '',
        totalWeight:          parseFloat(hdr.HeaderGrossWeight) || 0,
        weightUnit:           hdr.HeaderWeightUnit         ?? '',
        deliveryDocumentType: hdr.DeliveryDocumentType     ?? '',
    };

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

    await UPSERT.into(DH).entries([headerToUpsert]);
    if (itemsToUpsert.length) await UPSERT.into(DI).entries(itemsToUpsert);
    console.log(`[BATCH] Synced delivery ${deliveryDocument}: ${itemsToUpsert.length} items`);
}

function extractFieldFromWhere(where, fieldName) {
    if (!where) return null;
    const flat = Array.isArray(where) ? where : [where];
    for (const node of flat) {
        if (!node || typeof node !== 'object') continue;
        if (node.ref && node.ref[0] === fieldName) continue; // ref node, value is next sibling
        // Pattern: [{ref:[fieldName]}, '=', {val:'...'}]
        if (Array.isArray(node)) {
            const val = extractFieldFromWhere(node, fieldName);
            if (val) return val;
        }
        const keys = Object.keys(node);
        for (const k of keys) {
            if (Array.isArray(node[k])) {
                const val = extractFieldFromWhere(node[k], fieldName);
                if (val) return val;
            }
        }
    }
    // Walk flat array looking for ref+val pattern
    for (let i = 0; i < flat.length - 2; i++) {
        const a = flat[i], op = flat[i+1], b = flat[i+2];
        if (a?.ref?.[0] === fieldName && (op === '=' || op === 'eq') && b?.val !== undefined)
            return String(b.val);
        if (b?.ref?.[0] === fieldName && (op === '=' || op === 'eq') && a?.val !== undefined)
            return String(a.val);
    }
    return null;
}

// ─── Service ──────────────────────────────────────────────────────────────────

module.exports = cds.service.impl(async function () {

    this.before('READ', 'DeliveryHeaders', async (req) => {
        const deliveryDocument = extractFieldFromWhere(req.query?.SELECT?.where, 'deliveryDocument');
        if (!deliveryDocument) return;
        try { await syncDelivery(deliveryDocument); }
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
