@AbapCatalog.sqlViewName: 'ZI00BOOK2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Interface-View: Booking'
@VDM.viewType: #BASIC
define view ZI_00_Booking2
  as select from sbook
{
  key carrid     as CarrierID,
  key connid     as ConnectionID,
  key fldate     as FlightDate,
  key bookid     as BookingID,
      customid   as CustomerID,
      class      as FlightClass,
      order_date as OrderDate
}
