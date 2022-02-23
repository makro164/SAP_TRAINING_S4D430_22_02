@AbapCatalog.sqlViewName: 'ZI00CONN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Interface-View: Connection'
@VDM.viewType: #BASIC
define view ZI_00_Connection
  as select from spfli
{
  key carrid    as CarrierID,
  key connid    as ConnectionID,
      countryfr as CountryFrom,
      cityfrom  as CityFrom,
      airpfrom  as AirportFrom,
      countryto as CountryTo,
      cityto    as CityTo,
      airpto    as AirportTo,
      deptime   as DepartureTime,
      arrtime   as ArrivalTime,
      distance  as Distance,
      distid    as DistanceUnit,
      fltype    as FlightType
}
