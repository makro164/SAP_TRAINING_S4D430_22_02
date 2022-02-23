@AbapCatalog.sqlViewName: 'ZC00CONNTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View: Connection'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
define view ZC_00_ConnectionTP
  as select from ZI_00_ConnectionTP
  association [0..*] to ZC_00_FlightTP as _Flights on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
                                                   and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID
{
  key CarrierID,
  key ConnectionID,
      CountryFrom,
      CityFrom,
      AirportFrom,
      CountryTo,
      CityTo,
      AirportTo,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      FlightType,
      _Flights
}
