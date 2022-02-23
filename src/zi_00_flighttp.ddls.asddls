@AbapCatalog.sqlViewName: 'ZI00FLIIGHTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Flight'
@VDM.viewType: #TRANSACTIONAL
define view ZI_00_FlightTP
  as select from ZI_00_Flight
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      Price,
      CurrencyCode,
      Planetype,
      SeatsMax,
      SeatsOccupied
}
