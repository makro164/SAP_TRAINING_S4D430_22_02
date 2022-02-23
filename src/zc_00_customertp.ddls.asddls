@AbapCatalog.sqlViewName: 'ZC00CUSTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Consumption-View: Customer'
@VDM.viewType: #CONSUMPTION
define view ZC_00_CustomerTP
  as select from ZI_00_CustomerTP
  association [*] to ZC_00_BookingTP as _Bookings on _Bookings.CustomerID = ZI_00_CustomerTP.ID

{
  key ID,
      Name,
      Street,
      Postcode,
      City,
      Country,
      Discount,
      _Bookings
}
