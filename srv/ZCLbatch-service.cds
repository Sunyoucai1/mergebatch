using { com.riotinto.s4.batch as db } from '../db/ZCLbatch-model';

service BatchMergeService @(path: '/batchmerge') {

    @(
        Capabilities.UpdateRestrictions: { Updatable: false },
        Capabilities.DeleteRestrictions: { Deletable: false },
        Capabilities.InsertRestrictions: { Insertable: false }
    )
    entity DeliveryHeaders as projection on db.ZCLDeliveryHeaders {
        *,
        virtual canMerge : Boolean
    }
        actions {
            action mergeBatch() returns { success: Boolean; message: String; };
        };

    @(
        Capabilities.UpdateRestrictions: { Updatable: false },
        Capabilities.DeleteRestrictions: { Deletable: false },
        Capabilities.InsertRestrictions: { Insertable: false }
    )
    entity DeliveryItems as projection on db.ZCLDeliveryItems;

}

// ─── Field immutability ───────────────────────────────────────────────────────

annotate BatchMergeService.DeliveryHeaders with {
    deliveryDocument     @Core.Immutable;
    documentDate         @Core.Immutable;
    shipToParty          @Core.Immutable;
    shipToPartyName      @Core.Immutable;
    totalWeight          @Core.Immutable;
    weightUnit           @Core.Immutable;
    deliveryDocumentType @Core.Immutable;
}

annotate BatchMergeService.DeliveryItems with {
    deliveryDocument             @Core.Immutable  @UI.Hidden;
    deliveryDocumentItem         @Core.Immutable;
    material                     @Core.Immutable;
    actualDeliveryQuantity       @Core.Immutable;
    deliveryQuantityUnit         @Core.Immutable;
    batch                        @Core.Immutable;
    deliveryDocumentItemCategory @Core.Immutable;
    higherLevelItem              @Core.Immutable;
    storageLocation              @Core.Immutable;
    plant                        @Core.Immutable;
}

// ─── List Report ─────────────────────────────────────────────────────────────

annotate BatchMergeService.DeliveryHeaders with @(
    UI.SelectionFields: [
        deliveryDocument,
        shipToParty
    ],
    UI.LineItem: [
        { Value: deliveryDocument,     Label: 'OD Number'      },
        { Value: deliveryDocumentType, Label: 'Document Type'  },
        { Value: shipToParty,          Label: 'Ship-To'        },
        { Value: documentDate,         Label: 'Document Date'  },
        { Value: totalWeight,          Label: 'Total Weight'   },
        { Value: weightUnit,           Label: 'Unit'           }
    ]
);

// ─── Object Page ─────────────────────────────────────────────────────────────

annotate BatchMergeService.DeliveryHeaders with @(
    UI.HeaderInfo: {
        TypeName:       'Outbound Delivery',
        TypeNamePlural: 'Outbound Deliveries',
        Title:          { Value: deliveryDocument },
        Description:    { Value: shipToPartyName }
    },
    UI.FieldGroup#GeneralInfo: {
        Label: 'General Info',
        Data: [
            { Value: deliveryDocument,     Label: 'Delivery Document'  },
            { Value: documentDate,         Label: 'Document Date'      },
            { Value: shipToParty,          Label: 'Ship-To Party'      },
            { Value: totalWeight,          Label: 'Total Weight'       },
            { Value: weightUnit,           Label: 'Unit'               },
            { Value: deliveryDocumentType, Label: 'Delivery Type'      }
        ]
    },
    UI.Facets: [
        {
            $Type: 'UI.CollectionFacet',
            ID:    'DeliveryDetails',
            Label: 'Delivery Details',
            Facets: [
                {
                    $Type:  'UI.ReferenceFacet',
                    ID:     'GeneralInfoSection',
                    Label:  'General Info',
                    Target: '@UI.FieldGroup#GeneralInfo'
                },
                {
                    $Type:  'UI.ReferenceFacet',
                    ID:     'DeliveryItemsSection',
                    Label:  'Delivery Items',
                    Target: 'deliveryItems/@UI.LineItem'
                }
            ]
        }
    ]
);

annotate BatchMergeService.DeliveryHeaders with actions {
    mergeBatch @(
        Core.OperationAvailable: canMerge
    );
};

// ─── Delivery Items table ─────────────────────────────────────────────────────

annotate BatchMergeService.DeliveryItems with @(
    UI.LineItem: [
        { Value: deliveryDocumentItem,         Label: 'Item',      ![@UI.Importance]: #High },
        { Value: material,                     Label: 'Material',  ![@UI.Importance]: #High },
        { Value: actualDeliveryQuantity,       Label: 'Qty',       ![@UI.Importance]: #High },
        { Value: deliveryQuantityUnit,         Label: 'Unit',      ![@UI.Importance]: #High },
        { Value: batch,                        Label: 'Batch',     ![@UI.Importance]: #High },
        { Value: deliveryDocumentItemCategory, Label: 'Category',  ![@UI.Importance]: #High }
    ]
);
