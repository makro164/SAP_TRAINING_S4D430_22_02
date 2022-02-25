@AbapCatalog.sqlViewName: 'ZC00BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View: Booking'
@VDM.viewType: #CONSUMPTION
@Metadata.allowExtensions: true
@ObjectModel: {
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view ZC_00_BookingTP
  as select from ZI_00_BookingTP
  association [1..1] to ZC_00_CustomerTP as _Customer on _Customer.ID = ZI_00_BookingTP.CustomerID
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
  key BookingID,
      CustomerID,
      FlightClass,
      OrderDate,
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Customer
}
