@AbapCatalog.sqlViewName: 'ZC00CUSTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Consumption-View: Customer'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel: {
    transactionalProcessingDelegated: true,

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view ZC_00_CustomerTP
  as select from ZI_00_CustomerTP
  association [*] to ZC_00_BookingTP as _Bookings on _Bookings.CustomerID = ZI_00_CustomerTP.ID

{
  key ID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Name,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Street,
      Postcode,
      City,
      Country,
      Discount,
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _Bookings
}
