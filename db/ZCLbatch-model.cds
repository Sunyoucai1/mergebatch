namespace com.riotinto.s4.batch;

entity ZCLDeliveryHeaders {
    key deliveryDocument     : String(10);
        documentDate         : Date;
        shipToParty          : String(10);
        shipToPartyName      : String(80);
        totalWeight              : Decimal(15,3);
        weightUnit               : String(3);
        deliveryDocumentType     : String(4);
        deliveryItems        : Composition of many ZCLDeliveryItems
                               on deliveryItems.deliveryDocument = deliveryDocument;
}

entity ZCLDeliveryItems {
    key deliveryDocument       : String(10);
    key deliveryDocumentItem   : String(6);
        material               : String(40);
        actualDeliveryQuantity : Decimal(13,3);
        deliveryQuantityUnit   : String(3);
        batch                  : String(10);
        deliveryDocumentItemCategory : String(4);
        higherLevelItem        : String(6);
        storageLocation        : String(4);
        plant                  : String(4);
}
