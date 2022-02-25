@AbapCatalog.sqlViewName: 'ZI00BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Booking'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
    writeActivePersistence: 'zv00booking',

    representativeKey: 'BookingID',
    semanticKey: ['BookingID'],

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view ZI_00_BookingTP
  as select from ZI_00_Booking2
  association [1..1] to ZI_00_CustomerTP as _Customer on _Customer.ID = ZI_00_Booking2.CustomerID
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
