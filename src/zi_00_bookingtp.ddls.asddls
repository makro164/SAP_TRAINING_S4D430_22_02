@AbapCatalog.sqlViewName: 'ZI00BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Booking'
@VDM.viewType: #TRANSACTIONAL
define view ZI_00_BookingTP
  as select from ZI_00_Booking2
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
  key BookingID,
      CustomerID,
      FlightClass,
      OrderDate
}
