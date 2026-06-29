/* checksum : 12bcfcec241e742ca8a7069459afac2a */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZAPI_OUTBOUND_DELIVERY_SRV2 {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Item Texts'
  entity A_OutbDeliveryItemText {
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key DeliveryDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Text ID'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key TextElement : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Language'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    key Language : String(2) not null;
    @sap.unicode : 'false'
    @sap.label : 'Description'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TextElementDescription : String(30) not null;
    @sap.unicode : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TextElementText : String not null;
    @sap.unicode : 'false'
    @sap.label : 'Truth Value'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryLongTextIsFormatted : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Texts'
  entity A_OutbDeliveryHeaderText {
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Text ID'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key TextElement : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Language'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    key Language : String(2) not null;
    @sap.unicode : 'false'
    @sap.label : 'Description'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TextElementDescription : String(30) not null;
    @sap.unicode : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TextElementText : String not null;
    @sap.unicode : 'false'
    @sap.label : 'Truth Value'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryLongTextIsFormatted : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.searchable : 'true'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Handling Unit Headers'
  entity A_HandlingUnitHeaderDelivery {
    @sap.unicode : 'false'
    @sap.label : 'Internal HU no.'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key HandlingUnitInternalId : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Created By'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CreatedByUser : String(12) not null;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Created On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CreationDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CreationTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Delivery Document'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.unit : 'VolumeUnit'
    @sap.label : 'Total Volume'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    GrossVolume : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.unit : 'WeightUnit'
    @sap.label : 'Total Weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    GrossWeight : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Base Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    HandlingUnitBaseUnitOfMeasure : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Content'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitContentDescription : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Handling Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitExternalId : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'ID Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitExternalIdType : String(1) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU group 1'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitGroup1 : String(5) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU group 2'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitGroup2 : String(5) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU group 3'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitGroup3 : String(5) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU group 4'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitGroup4 : String(5) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU group 5'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitGroup5 : String(5) not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitUoMDimension'
    @sap.label : 'Height'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitHeight : Decimal(13, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitInternalStatus : String(4) not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitUoMDimension'
    @sap.label : 'Length'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitLength : Decimal(13, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Higher-level HU'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitLowerLevelRefer : String(10) not null;
    @sap.unicode : 'false'
    @sap.unit : 'VolumeUnit'
    @sap.label : 'Allowed volume'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitMaxVolume : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.unit : 'WeightUnit'
    @sap.label : 'Allowed weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitMaxWeight : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.unit : 'VolumeUnit'
    @sap.label : 'Loading Volume'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitNetVolume : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU ID 2'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitSecondExternalId : String(20) not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitTareVolumeUnit'
    @sap.label : 'Tare Volume'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitTareVolume : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Volume Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    HandlingUnitTareVolumeUnit : String(3) not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitTareWeightUnit'
    @sap.label : 'Tare Weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitTareWeight : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Unit of Weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    HandlingUnitTareWeightUnit : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    HandlingUnitUoMDimension : String(3) not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitUoMDimension'
    @sap.label : 'Width'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitWidth : Decimal(13, 3) not null;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Changed On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    LastChangeDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Changed By'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    LastChangedByUser : String(12);
    @sap.unicode : 'false'
    @sap.label : 'Time of change'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    LastChangeTime : Time;
    @sap.unicode : 'false'
    @sap.unit : 'WeightUnit'
    @sap.label : 'Loading Weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    NetWeight : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'PackMaterials'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PackagingMaterial : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Pack. Mat. Cat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PackagingMaterialCategory : String(1) not null;
    @sap.unicode : 'false'
    @sap.label : 'Matl Grp Pckmat'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PackagingMaterialGroup : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Packag.Mat.Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PackagingMaterialType : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Packing object'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PackingInstructionNumber : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'Shipping Point'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    ShippingPoint : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Volume Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    VolumeUnit : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Unit of Weight'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    WeightUnit : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Whse Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Warehouse : String(3) not null;
    to_HandlingUnitItemDelivery : Association to many A_HandlingUnitItemDelivery {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.searchable : 'true'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Handling Unit Items'
  entity A_HandlingUnitItemDelivery {
    @sap.unicode : 'false'
    @sap.label : 'Internal HU no.'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key HandlingUnitInternalId : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'HU item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key HandlingUnitItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Batch'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Batch : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Handling Unit'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitExternalId : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'Lower-level HU'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitNestedInternalId : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'No.AuxPckgMatls'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitNrOfAuxPackgMat : Integer not null;
    @sap.unicode : 'false'
    @sap.label : 'No.serial no.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitNumberOfSerialnumb : Integer not null;
    @sap.unicode : 'false'
    @sap.unit : 'HandlingUnitQuantityUnit'
    @sap.label : 'Packed Quantity'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitQuantity : Decimal(15, 3) not null;
    @sap.unicode : 'false'
    @sap.label : 'UoM of HU item'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    HandlingUnitQuantityUnit : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item type'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HandlingUnitTypeOfContent : String(1) not null;
    @sap.unicode : 'false'
    @sap.label : 'Material'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Material : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Partner mat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MaterialByCustomer : String(35) not null;
    @sap.unicode : 'false'
    @sap.label : 'Description'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MaterialName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'SerialNoProfile'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SerialNumberProfile : String(4) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.searchable : 'true'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Partner Addresses 2'
  entity A_OutbDeliveryAddress2 {
    @sap.unicode : 'false'
    @sap.label : 'SD Document'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Partner Functn'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key PartnerFunction : String(2) not null;
    @sap.unicode : 'false'
    @sap.label : 'DLV.Version'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryVersion : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 3'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AdditionalStreetPrefixName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Address Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AddressID : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 5'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AdditionalStreetSuffixName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Time Zone'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AddressTimeZone : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Building Code'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Building : String(20);
    @sap.unicode : 'false'
    @sap.label : 'Name'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName1 : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Name 2'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName2 : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Name 3'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName3 : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Name 4'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName4 : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Last Name'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PersonFamilyName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'First Name'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PersonGivenName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'c/o'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CareOfName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'City'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CityName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Company Post Cd'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CompanyPostalCode : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Language'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CorrespondenceLanguage : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Country/Reg.'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Country : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'County'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    County : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Delivery Service No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryServiceNumber : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Delvry Serv Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryServiceTypeCode : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'District'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    District : String(40);
    @sap.unicode : 'false'
    @sap.label : 'E-Mail Address'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    EmailAddress : String(241);
    @sap.unicode : 'false'
    @sap.label : 'Fax'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FaxNumber : String(30);
    @sap.unicode : 'false'
    @sap.label : 'Extension'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FaxNumberExtension : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Floor'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Floor : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Title Key'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FormOfAddress : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Different City'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HomeCityName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'House Number'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HouseNumber : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Supplement'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HouseNumberSupplementText : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Telephone'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MobilePhoneNumber : String(30);
    @sap.unicode : 'false'
    @sap.label : 'Telephone'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PhoneNumber : String(30);
    @sap.unicode : 'false'
    @sap.label : 'Extension'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PhoneNumberExtension : String(10);
    @sap.unicode : 'false'
    @sap.label : 'PO Box'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBox : String(10);
    @sap.unicode : 'false'
    @sap.label : 'PO Box City'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxDeviatingCityName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'PO Box C/R'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxDeviatingCountry : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Region'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxDeviatingRegion : String(3);
    @sap.unicode : 'false'
    @sap.label : 'PO Box w/o No.'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxIsWithoutNumber : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'PO Box Lobby'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxLobbyName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'PO Box Post Cde'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxPostalCode : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Postal Code'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PostalCode : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Comm. Method'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PrfrdCommMediumType : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Region'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Region : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Room Number'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    RoomNumber : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Street'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetName : String(60);
    @sap.unicode : 'false'
    @sap.label : 'Street 2'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetPrefixName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Street 4'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetSuffixName : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Tax Jurisdiction'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TaxJurisdiction : String(15) not null;
    @sap.unicode : 'false'
    @sap.label : 'Transport Zone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TransportZone : String(10) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.searchable : 'true'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Items'
  entity A_OutbDeliveryItem {
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.updatable : 'false'
    key DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key DeliveryDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Qty (stckp.unt)'
    @sap.creatable : 'false'
    ActualDeliveredQtyInBaseUnit : Decimal(13, 3);
    @sap.unicode : 'false'
    @sap.label : 'Delivery qty'
    ActualDeliveryQuantity : Decimal(13, 3);
    @sap.unicode : 'false'
    @sap.label : 'Customer Grp 1'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalCustomerGroup1 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Customer Grp 2'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalCustomerGroup2 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Customer Grp 3'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalCustomerGroup3 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Customer Grp 4'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalCustomerGroup4 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Customer Grp 5'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalCustomerGroup5 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialGroup 1'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalMaterialGroup1 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialGroup 2'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalMaterialGroup2 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialGroup 3'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalMaterialGroup3 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialGroup 4'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalMaterialGroup4 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialGroup 5'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AdditionalMaterialGroup5 : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Alt.ProdNr.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    AlternateProductNumber : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Base Unit'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.semantics : 'unit-of-measure'
    BaseUnit : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Batch'
    @sap.creatable : 'false'
    Batch : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Supplier Batch'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    BatchBySupplier : String(15);
    @sap.unicode : 'false'
    @sap.label : 'Int.object no.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    BatchClassification : String(18);
    @sap.unicode : 'false'
    @sap.label : 'BOM expl.number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    BOMExplosion : String(8);
    @sap.unicode : 'false'
    @sap.label : 'Business Area'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    BusinessArea : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Consumption'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ConsumptionPosting : String(1);
    @sap.unicode : 'false'
    @sap.label : 'CO Area'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ControllingArea : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Cost Center'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CostCenter : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Created By'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreatedByUser : String(12);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Created On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreationDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreationTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Engin. change'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CustEngineeringChgStatus : String(17);
    @sap.unicode : 'false'
    @sap.label : 'Item category'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryDocumentItemCategory : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Description'
    @sap.creatable : 'false'
    DeliveryDocumentItemText : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Delivery Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryGroup : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Sales Unit'
    @sap.updatable : 'false'
    @sap.semantics : 'unit-of-measure'
    DeliveryQuantityUnit : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Billing Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryRelatedBillingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Denominat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryToBaseQuantityDnmntr : Decimal(5, 0);
    @sap.unicode : 'false'
    @sap.label : 'Numerator'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryToBaseQuantityNmrtr : Decimal(5, 0);
    @sap.unicode : 'false'
    @sap.label : 'DLV.Version'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryVersion : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Department'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DepartmentClassificationByCust : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Distr. Channel'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DistributionChannel : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Division'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Division : String(2);
    @sap.unicode : 'false'
    @sap.label : 'EU Delivery Item ARC Status'
    @sap.creatable : 'false'
    EUDeliveryItemARCStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Fixed proc.time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    FixedShipgProcgDurationInDays : Decimal(5, 2);
    @sap.unicode : 'false'
    @sap.label : 'G/L Account'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    GLAccount : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Reason for mvt.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    GoodsMovementReasonCode : String(4);
    @sap.unicode : 'false'
    @sap.label : 'GoodsMovementSt'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    GoodsMovementStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Movement type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    GoodsMovementType : String(3);
    @sap.unicode : 'false'
    @sap.label : 'HigherLevelItemBatch'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HigherLvlItmOfBatSpltItm : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Higher-Lev.Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HigherLevelItem : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Inspection Lot'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    InspectionLot : String(12);
    @sap.unicode : 'false'
    @sap.label : 'Partial lot'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    InspectionPartialLot : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Interco. BillSt'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IntercompanyBillingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'EAN/UPC'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    InternationalArticleNumber : String(18);
    @sap.unicode : 'false'
    @sap.label : 'Special Stock'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    InventorySpecialStockType : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Valuation type'
    @sap.creatable : 'false'
    InventoryValuationType : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Deliv. Compl.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IsCompletelyDelivered : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'No gds movement'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IsNotGoodsMovementsRelevant : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Separate val.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IsSeparateValuation : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Receiving Batch'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssgOrRcvgBatch : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Receiving Mat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssgOrRcvgMaterial : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Sp.ind.st.tfr.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssgOrRcvgSpclStockInd : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Stock Category'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssgOrRcvgStockCategory : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Val. Type Tfr.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssgOrRcvgValuationType : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Receiving plant'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssuingOrReceivingPlant : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Receiving SLoc.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IssuingOrReceivingStorageLoc : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Block'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemBillingBlockReason : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Item Bill.Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemBillingIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item Deliv.Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemDeliveryIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item data: GM'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemGdsMvtIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemGeneralIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Gross Weight'
    @sap.creatable : 'false'
    ItemGrossWeight : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Relev.for Bill.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemIsBillingRelevant : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Net Weight'
    @sap.creatable : 'false'
    ItemNetWeight : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'It.data pckgng'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemPackingIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item data pck/putawy'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ItemPickingIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Volume'
    @sap.creatable : 'false'
    ItemVolume : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Volume Unit'
    @sap.creatable : 'false'
    @sap.semantics : 'unit-of-measure'
    ItemVolumeUnit : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Unit of Weight'
    @sap.creatable : 'false'
    @sap.semantics : 'unit-of-measure'
    ItemWeightUnit : String(3);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Changed On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LastChangeDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Loading Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LoadingGroup : String(4);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Date of Manuf.'
    @sap.creatable : 'false'
    ManufactureDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Material'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Material : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Cust. Material'
    @sap.creatable : 'false'
    MaterialByCustomer : String(35);
    @sap.unicode : 'false'
    @sap.label : 'Mat.freight grp'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    MaterialFreightGroup : String(8);
    @sap.unicode : 'false'
    @sap.label : 'Material Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    MaterialGroup : String(9);
    @sap.unicode : 'false'
    @sap.label : 'Batch Mgmt Rqt'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    MaterialIsBatchManaged : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Batches'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    MaterialIsIntBatchManaged : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'No.serial no.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    NumberOfSerialNumbers : Integer;
    @sap.unicode : 'false'
    @sap.label : 'Order'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OrderID : String(12);
    @sap.unicode : 'false'
    @sap.label : 'Order item no.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OrderItem : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Delivery Qty'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OriginalDeliveryQuantity : Decimal(13, 3);
    @sap.unicode : 'false'
    @sap.label : 'MaterialEntered'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OriginallyRequestedMaterial : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Overdeliv. Tol.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
    @sap.unicode : 'false'
    @sap.label : 'Packing status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PackingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Part.dlv./item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PartialDeliveryIsAllowed : String(1);
    @sap.unicode : 'false'
    @sap.label : 'PaytGuarantForm'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PaymentGuaranteeForm : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Confirmation'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PickingConfirmationStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Picking ID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PickingControl : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Picking status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PickingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Plant'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Plant : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Main posting id'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PrimaryPostingSwitch : String(1);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Mat.Avail.Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProductAvailabilityDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Matl Staging Tme'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProductAvailabilityTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Configuration'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProductConfiguration : String(18);
    @sap.unicode : 'false'
    @sap.label : 'Prod. Hierarchy'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProductHierarchyNode : String(18);
    @sap.unicode : 'false'
    @sap.label : 'Profit. Segment'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProfitabilitySegment : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Profit Center'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProfitCenter : String(10);
    @sap.unicode : 'false'
    @sap.label : 'POD rel. RC/SC'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProofOfDeliveryRelevanceCode : String(1);
    @sap.unicode : 'false'
    @sap.label : 'POD status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProofOfDeliveryStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Qty. is fixed'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    QuantityIsFixed : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Recv. Point'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ReceivingPoint : String(25);
    @sap.unicode : 'false'
    @sap.label : 'PrDocLogSys'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ReferenceDocumentLogicalSystem : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Ref. Document'
    @sap.updatable : 'false'
    ReferenceSDDocument : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Prec.Doc.Categ.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ReferenceSDDocumentCategory : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Reference Item'
    @sap.updatable : 'false'
    ReferenceSDDocumentItem : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Promotion'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    RetailPromotion : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Item Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesDocumentItemType : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Sales Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesGroup : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Sales Office'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesOffice : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Document Cat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SDDocumentCategory : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Overall Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SDProcessStatus : String(1);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'SLED/BBD'
    @sap.creatable : 'false'
    ShelfLifeExpirationDate : Timestamp;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Statistics Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    StatisticsDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Stock Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    StockType : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Storage Bin'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    StorageBin : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Stor. Location'
    @sap.creatable : 'false'
    StorageLocation : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Storage Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    StorageType : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Sub.movmnt type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SubsequentMovementType : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Trans. Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TransportationGroup : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Underdel. Tol.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
    @sap.unicode : 'false'
    @sap.label : 'Unlimited'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    UnlimitedOverdeliveryIsAllowed : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Var. proc. time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    VarblShipgProcgDurationInDays : Decimal(5, 2);
    @sap.unicode : 'false'
    @sap.label : 'Warehouse No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Warehouse : String(3);
    @sap.unicode : 'false'
    @sap.label : 'WM activ.status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseActivityStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Staging Area'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseStagingArea : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Stock Category'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseStockCategory : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Storage Bin'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseStorageBin : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Stock Segment'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    StockSegment : String(40);
    @sap.unicode : 'false'
    @sap.label : 'Requirement Segment'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    RequirementSegment : String(40);
    to_SerialDeliveryItem : Association to A_SerialNmbrDelivery {  };
    to_DocumentFlow : Association to many A_OutbDeliveryDocFlow {  };
    to_HandlingUnitItemDelivery : Association to many A_HandlingUnitItemDelivery {  };
    to_DeliveryDocumentItemText : Association to many A_OutbDeliveryItemText {  };
  } actions {
    action CreateBatchSplitItem(
      @sap.label : 'Pick quantity'
      PickQuantityInSalesUOM : Decimal(3, 3),
      @sap.label : 'Batch'
      Batch : String(10),
      @sap.label : 'Delivery Qty'
      ActualDeliveryQuantity : Decimal(3, 3),
      @sap.label : 'Sales Unit'
      DeliveryQuantityUnit : String(3)
    ) returns CreatedDeliveryItem;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.searchable : 'true'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Headers'
  entity A_OutbDeliveryHeader {
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Route'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ActualDeliveryRoute : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Del. loc. tzone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Shippinglocationtimezone : String(6) not null;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Actual GI Date'
    @sap.creatable : 'false'
    ActualGoodsMovementDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Rec. time zone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Receivinglocationtimezone : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'GI Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ActualGoodsMovementTime : Time;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Billing Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    BillingDocumentDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Bill of Lading'
    @sap.creatable : 'false'
    BillOfLading : String(35);
    @sap.unicode : 'false'
    @sap.label : 'Complete Dlv.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CompleteDeliveryIsDefined : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Confirm. Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ConfirmationTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Created By'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreatedByUser : String(12);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Created On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreationDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CreationTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Customer Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    CustomerGroup : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Delivery Block'
    @sap.creatable : 'false'
    DeliveryBlockReason : String(2);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Delivery Date'
    @sap.creatable : 'false'
    DeliveryDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Ext. Delivery'
    @sap.creatable : 'false'
    DeliveryDocumentBySupplier : String(35);
    @sap.unicode : 'false'
    @sap.label : 'Delivery Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryDocumentType : String(4);
    @sap.unicode : 'false'
    @sap.label : 'In Plant'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryIsInPlant : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Delivery Prior.'
    @sap.creatable : 'false'
    DeliveryPriority : String(2);
    @sap.unicode : 'false'
    @sap.label : 'TimeOfDelivery'
    @sap.creatable : 'false'
    DeliveryTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'DLV.Version'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DeliveryVersion : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Depreciation'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DepreciationPercentage : Decimal(5, 2);
    @sap.unicode : 'false'
    @sap.label : 'StatDecntrlWhse'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DistrStatusByDecentralizedWrhs : String(1);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Document Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DocumentDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Type Ext. Ident'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ExternalIdentificationType : String(1);
    @sap.unicode : 'false'
    @sap.label : 'ID Transp.Syst.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ExternalTransportSystem : String(5);
    @sap.unicode : 'false'
    @sap.label : 'FactoryCalendar'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    FactoryCalendarByCustomer : String(2);
    @sap.unicode : 'false'
    @sap.label : 'GR/GI Slip No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    GoodsIssueOrReceiptSlipNumber : String(10);
    @sap.unicode : 'false'
    @sap.label : 'GI Time'
    @sap.creatable : 'false'
    GoodsIssueTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'HU in Stock'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HandlingUnitInStock : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Header Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HdrGeneralIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Head. Data GM'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HdrGoodsMvtIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Header Bill.Dat'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HeaderBillgIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Billing Block'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HeaderBillingBlockReason : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Header Dlv.Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HeaderDelivIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Total Weight'
    @sap.creatable : 'false'
    HeaderGrossWeight : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Net Weight'
    @sap.creatable : 'false'
    HeaderNetWeight : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Head.Data Pckg.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HeaderPackingIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Head.Data Pck/Putawy'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HeaderPickgIncompletionStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Volume'
    @sap.creatable : 'false'
    HeaderVolume : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Volume Unit'
    @sap.creatable : 'false'
    @sap.semantics : 'unit-of-measure'
    HeaderVolumeUnit : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Unit of Weight'
    @sap.creatable : 'false'
    @sap.semantics : 'unit-of-measure'
    HeaderWeightUnit : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Incoterms'
    @sap.creatable : 'false'
    IncotermsClassification : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Incoterms 2'
    @sap.creatable : 'false'
    IncotermsTransferLocation : String(28);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Billing Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IntercompanyBillingDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Financ.Doc.No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    InternalFinancialDocument : String(10);
    @sap.unicode : 'false'
    @sap.label : 'ID: Delivery Split'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IsDeliveryForSingleWarehouse : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Export'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    IsExportDelivery : String(1);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Changed On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LastChangeDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Changed By'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LastChangedByUser : String(12);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Loading Date'
    @sap.creatable : 'false'
    LoadingDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Loading Point'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LoadingPoint : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Loading Time'
    @sap.creatable : 'false'
    LoadingTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Mns of Trans.ID'
    @sap.creatable : 'false'
    MeansOfTransport : String(20);
    @sap.unicode : 'false'
    @sap.label : 'MeansTransp.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    MeansOfTransportRefMaterial : String(40);
    @sap.unicode : 'false'
    @sap.label : 'MnsOfTrns Type'
    @sap.creatable : 'false'
    MeansOfTransportType : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Order Combinat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OrderCombinationIsAllowed : Boolean;
    @sap.unicode : 'false'
    @sap.label : 'Order'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OrderID : String(12);
    @sap.unicode : 'false'
    @sap.label : 'Confirmed'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallDelivConfStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Billing Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallDelivReltdBillgStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'TotalGdsMvtStat'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallGoodsMovementStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Totals Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallIntcoBillingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Packing Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallPackingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Confirmation'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallPickingConfStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Ovr.Pick.Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallPickingStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'POD Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallProofOfDeliveryStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Overall Status'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallSDProcessStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'OverallWMStatus'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OverallWarehouseActivityStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item Deliv.Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OvrlItmDelivIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item data: GM'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OvrlItmGdsMvtIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Item Data'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OvrlItmGeneralIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'It.Data Packag.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OvrlItmPackingIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'It.Data Pck/Putaway'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    OvrlItmPickingIncompletionSts : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Paym.Guar.Proc.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PaymentGuaranteeProcedure : String(6);
    @sap.unicode : 'false'
    @sap.label : 'PickedItmLocat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    PickedItemsLocation : String(20);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Pick Date'
    @sap.creatable : 'false'
    PickingDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Picking Time'
    @sap.creatable : 'false'
    PickingTime : Time;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Planned Gds Mvmt'
    @sap.creatable : 'false'
    PlannedGoodsIssueDate : Timestamp;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'POD Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ProofOfDeliveryDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Route'
    @sap.creatable : 'false'
    ProposedDeliveryRoute : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Receiving Plant'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ReceivingPlant : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Route Schedule'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    RouteSchedule : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Sales District'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesDistrict : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Sales Office'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesOffice : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Sales Org.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SalesOrganization : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Document Cat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SDDocumentCategory : String(4);
    @sap.unicode : 'false'
    @sap.label : 'ShpmtBlReason'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ShipmentBlockReason : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Shipping Cond.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ShippingCondition : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Shipping Point'
    @sap.updatable : 'false'
    ShippingPoint : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Shipping Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ShippingType : String(2);
    @sap.unicode : 'false'
    @sap.label : 'Ship-To Party'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    ShipToParty : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Sold-To Party'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SoldToParty : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Spec.Processing'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    SpecialProcessingCode : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Stats. Currency'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.semantics : 'currency-code'
    StatisticsCurrency : String(5);
    @sap.unicode : 'false'
    @sap.label : 'Supplier'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Supplier : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Overall Blk St.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TotalBlockStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'OverallCredStat'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TotalCreditCheckStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'No. of Packages'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TotalNumberOfPackage : String(5);
    @sap.unicode : 'false'
    @sap.label : 'Doc. Currency'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.semantics : 'currency-code'
    TransactionCurrency : String(5);
    @sap.unicode : 'false'
    @sap.label : 'Trans. Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TransportationGroup : String(4);
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'TranspPlngDate'
    @sap.creatable : 'false'
    TransportationPlanningDate : Timestamp;
    @sap.unicode : 'false'
    @sap.label : 'Trns.Plan.Stat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    TransportationPlanningStatus : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Tr. Plan. Time'
    @sap.creatable : 'false'
    TransportationPlanningTime : Time;
    @sap.unicode : 'false'
    @sap.label : 'Unloading Point'
    @sap.creatable : 'false'
    UnloadingPointName : String(25);
    @sap.unicode : 'false'
    @sap.label : 'Warehouse No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    Warehouse : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Door for Whse'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseGate : String(3);
    @sap.unicode : 'false'
    @sap.label : 'Staging Area'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    WarehouseStagingArea : String(10);
    to_DeliveryDocumentText : Association to many A_OutbDeliveryHeaderText {  };
    to_HandlingUnitHeaderDelivery : Association to many A_HandlingUnitHeaderDelivery {  };
    to_DeliveryDocumentPartner : Association to many A_OutbDeliveryPartner {  };
    to_DeliveryDocumentItem : Association to many A_OutbDeliveryItem {  };
  } actions {
    action DeleteAllHandlingUnitsFromDelivery() returns HuReturn;
    action PickAndBatchSplitOneItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6),
      @sap.label : 'Batch'
      Batch : String(10),
      @sap.label : 'Qty (stckp.unt)'
      SplitQuantity : Decimal(3, 3),
      @sap.label : 'Base Unit'
      SplitQuantityUnit : String(3)
    ) returns many PickingReport;
    action AssignHandlingUnitToDelivery(
      @sap.label : 'Handling Unit'
      HandlingUnitExternalId : String(20)
    ) returns HuReturn;
    action SetPickingQuantityWithBaseQuantity(
      @sap.label : 'Qty (stckp.unt)'
      ActualDeliveredQtyInBaseUnit : Decimal(3, 3),
      @sap.label : 'Base Unit'
      BaseUnit : String(3),
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6)
    ) returns many PickingReport;
    action AddSerialNumberToDeliveryItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6),
      @sap.label : 'Serial Number'
      SerialNumber : String(18)
    ) returns many PickingReport;
    action DeleteSerialNumberFromDeliveryItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6),
      @sap.label : 'Serial Number'
      SerialNumber : String(18)
    ) returns many PickingReport;
    action DeleteAllSerialNumbersFromDeliveryItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6)
    ) returns many PickingReport;
    action PostGoodsIssue() returns many PickingReport;
    action ReverseGoodsIssue(
      @odata.Type : 'Edm.DateTime'
      @sap.label : 'Actual GI Date'
      ActualGoodsMovementDate : DateTime
    ) returns many Return;
    action ConfirmPickingAllItems() returns many PickingReport;
    action ConfirmPickingOneItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6)
    ) returns many PickingReport;
    action PickAllItems() returns many PickingReport;
    action PickOneItem(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6)
    ) returns many PickingReport;
    action PickOneItemWithSalesQuantity(
      @sap.label : 'Delivery qty'
      ActualDeliveryQuantity : Decimal(3, 3),
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6),
      @sap.label : 'Sales Unit'
      DeliveryQuantityUnit : String(3)
    ) returns many PickingReport;
    action PickOneItemWithBaseQuantity(
      @sap.label : 'Item'
      DeliveryDocumentItem : String(6),
      @sap.label : 'Qty (stckp.unt)'
      ActualDeliveredQtyInBaseUnit : Decimal(3, 3),
      @sap.label : 'Base Unit'
      BaseUnit : String(3)
    ) returns many PickingReport;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Document Flows'
  entity A_OutbDeliveryDocFlow {
    @sap.unicode : 'false'
    @sap.label : 'Preceding Doc.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key PrecedingDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Preceding Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key PrecedingDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Subs.Doc.Categ.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key SubsequentDocumentCategory : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'DLV.Version'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Deliveryversion : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Prec.Doc.Categ.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PrecedingDocumentCategory : String(4);
    @sap.unicode : 'false'
    @sap.label : 'Follow-on Doc.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Subsequentdocument : String(10);
    @sap.unicode : 'false'
    @sap.label : 'Quantity'
    @sap.creatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    QuantityInBaseUnit : Decimal(15, 3);
    @sap.unicode : 'false'
    @sap.label : 'Subsequent Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SubsequentDocumentItem : String(6);
    @sap.unicode : 'false'
    @sap.label : 'Pos./Negative'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SDFulfillmentCalculationRule : String(1);
    @sap.unicode : 'false'
    @sap.label : 'Confirmation ID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TransferOrderInWrhsMgmtIsConfd : Boolean;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Maintenance Item Object Lists'
  entity A_MaintenanceItemObject {
    @sap.unicode : 'false'
    @sap.label : 'Object counters'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key MaintenanceItemObject : Integer not null;
    @sap.unicode : 'false'
    @sap.label : 'Object list'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key MaintenanceItemObjectList : Integer64 not null;
    @sap.unicode : 'false'
    @sap.label : 'Assembly'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Assembly : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Equipment'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Equipment : String(18) not null;
    @sap.unicode : 'false'
    @sap.label : 'Functional loc.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FunctionalLocation : String(30) not null;
    @sap.unicode : 'false'
    @sap.label : 'Notification'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MaintenanceNotification : String(12) not null;
    @sap.unicode : 'false'
    @sap.label : 'Loc/AccAssmt'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MaintObjectLocAcctAssgmtNmbr : String(12) not null;
    @sap.unicode : 'false'
    @sap.label : 'Material'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Material : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Serial Number'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SerialNumber : String(18) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Maintenance Item Object List Headers'
  entity A_SerialNmbrDelivery {
    @sap.unicode : 'false'
    @sap.label : 'Object list'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key MaintenanceItemObjectList : Integer64 not null;
    @odata.Type : 'Edm.DateTime'
    @odata.Precision : 7
    @sap.unicode : 'false'
    @sap.label : 'Date'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDate : Timestamp not null;
    @sap.unicode : 'false'
    @sap.label : 'Delivery'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Document Cat.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SDDocumentCategory : String(4) not null;
    to_MaintenanceItemObject : Association to many A_MaintenanceItemObject {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Partners'
  entity A_OutbDeliveryPartner {
    @sap.unicode : 'false'
    @sap.label : 'Partner Functn'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key PartnerFunction : String(2) not null;
    @sap.unicode : 'false'
    @sap.label : 'SD Document'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key SDDocument : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Address Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AddressID : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'GUID of a Business Partner Address'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerAddressUUID : UUID not null;
    @sap.unicode : 'false'
    @sap.label : 'GUID of a Business Partner Address'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    RefBusinessPartnerAddressUUID : UUID not null;
    @sap.unicode : 'false'
    @sap.label : 'Contact Person'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    ContactPerson : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Customer'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Customer : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Personnel No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Personnel : String(8) not null;
    @sap.unicode : 'false'
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SDDocumentItem : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Supplier'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Supplier : String(10) not null;
    to_Address2 : Association to A_OutbDeliveryAddress2 {  };
    to_Address : Association to A_OutbDeliveryAddress {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '2'
  @sap.label : 'Outbound Delivery Partner Addresses'
  entity A_OutbDeliveryAddress {
    @sap.unicode : 'false'
    @sap.label : 'Address Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key AddressID : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key POBox : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box C/R'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key POBoxDeviatingCountry : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 3'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AdditionalStreetPrefixName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 5'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AdditionalStreetSuffixName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Time Zone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    AddressTimeZone : String(6) not null;
    @sap.unicode : 'false'
    @sap.label : 'Building Code'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Building : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'Name'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName1 : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Name 2'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName2 : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Name 3'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName3 : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Name 4'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BusinessPartnerName4 : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'c/o'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CareOfName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'City Code'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CityCode : String(12) not null;
    @sap.unicode : 'false'
    @sap.label : 'City'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CityName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'City'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CitySearch : String(25) not null;
    @sap.unicode : 'false'
    @sap.label : 'Company Post Cd'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CompanyPostalCode : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Language'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CorrespondenceLanguage : String(2) not null;
    @sap.unicode : 'false'
    @sap.label : 'Country/Reg.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Country : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'County'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    County : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Delivery Service No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryServiceNumber : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Delvry Serv Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryServiceTypeCode : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'District'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    District : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Fax'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FaxNumber : String(30) not null;
    @sap.unicode : 'false'
    @sap.label : 'Floor'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Floor : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Title Key'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FormOfAddress : String(4) not null;
    @sap.unicode : 'false'
    @sap.label : 'Full Name'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FullName : String(80) not null;
    @sap.unicode : 'false'
    @sap.label : 'Different City'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HomeCityName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'House Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HouseNumber : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Supplement'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HouseNumberSupplementText : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Address Version'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Nation : String(1) not null;
    @sap.unicode : 'false'
    @sap.label : 'Person Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Person : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Telephone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PhoneNumber : String(30) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box City'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxDeviatingCityName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Region'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxDeviatingRegion : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box w/o No.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxIsWithoutNumber : Boolean not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box Lobby'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxLobbyName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'PO Box Post Cde'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    POBoxPostalCode : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Postal Code'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PostalCode : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Comm. Method'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PrfrdCommMediumType : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Region'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Region : String(3) not null;
    @sap.unicode : 'false'
    @sap.label : 'Room Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    RoomNumber : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'Search Term 1'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SearchTerm1 : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetName : String(60) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 2'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetPrefixName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetSearch : String(25) not null;
    @sap.unicode : 'false'
    @sap.label : 'Street 4'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    StreetSuffixName : String(40) not null;
    @sap.unicode : 'false'
    @sap.label : 'Tax Jurisdiction'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TaxJurisdiction : String(15) not null;
    @sap.unicode : 'false'
    @sap.label : 'Transport Zone'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    TransportZone : String(10) not null;
  };

  @cds.external : true
  type HuReturn {
    @sap.label : 'Message ID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageIdentification : String(20);
    @sap.label : 'Message Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageNumber : String(3);
    @sap.label : 'Message Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageType : String(1);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable1 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable2 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable3 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable4 : String(50);
    @sap.label : 'Delivery'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10);
  };

  @cds.external : true
  type CreatedDeliveryItem {
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItem : String(6) not null;
  };

  @cds.external : true
  type PickingReport {
    @sap.label : 'Message ID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageIdentification : String(20);
    @sap.label : 'Message Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageNumber : String(3);
    @sap.label : 'Message Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageType : String(1);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable1 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable2 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable3 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable4 : String(50);
    @sap.label : 'Batch'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Batch : String(10);
    @sap.label : 'Sales Unit'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    @sap.semantics : 'unit-of-measure'
    DeliveryQuantityUnit : String(3);
    @sap.unit : 'DeliveryQuantityUnit'
    @sap.label : 'Delivery Qty'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    ActualDeliveryQuantity : Decimal(13, 3);
    @sap.label : 'Item Descr.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItemText : String(40);
    @sap.label : 'Material'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Material : String(40);
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItem : String(6);
    @sap.label : 'Delivery'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10);
  };

  @cds.external : true
  type Return {
    @sap.label : 'Group'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CollectiveProcessing : String(10);
    @sap.label : 'SD Document'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocument : String(10);
    @sap.label : 'Item'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DeliveryDocumentItem : String(6);
    @sap.label : 'Schedule Line'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    ScheduleLine : String(4);
    @sap.label : 'Counter'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CollectiveProcessingMsgCounter : String(2);
    @sap.label : 'Message ID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageIdentification : String(20);
    @sap.label : 'Message Number'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageNumber : String(3);
    @sap.label : 'Message Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageType : String(1);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable1 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable2 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable3 : String(50);
    @sap.label : 'Message var.'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    SystemMessageVariable4 : String(50);
    @sap.label : 'Group Type'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    CollectiveProcessingType : String(1);
  };
};

