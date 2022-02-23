@AbapCatalog.sqlViewName: 'ZI00FLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Interface-View: Flight'
@VDM.viewType: #BASIC
define view ZI_00_Flight
  as select from sflight
{
  key carrid    as CarrierID,
  key connid    as ConnectionID,
  key fldate    as FlightDate,
      price     as Price,
      currency  as CurrencyCode,
      planetype as Planetype,
      seatsmax  as SeatsMax,
      seatsocc  as SeatsOccupied
}
