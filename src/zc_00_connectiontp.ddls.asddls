@AbapCatalog.sqlViewName: 'ZC00CONNTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View: Connection'
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
define view ZC_00_ConnectionTP
  as select from ZI_00_ConnectionTP
  association [0..*] to ZC_00_FlightTP  as _Flights     on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
                                                        and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID
  association [1..1] to ZC_00_AirportVH as _AirportFrom on  _AirportFrom.Id = ZI_00_ConnectionTP.AirportFrom
  association [1..1] to ZC_00_AirportVH as _AirportTo   on  _AirportTo.Id = ZI_00_ConnectionTP.AirportTo
{
  key CarrierID,
  key ConnectionID,
      CountryFrom,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      CityFrom,
      @Consumption.valueHelp: '_AirportFrom'
      AirportFrom,
      CountryTo,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      CityTo,
      @Consumption.valueHelp: '_AirportTo'
      AirportTo,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      FlightType,
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _Flights,
      _AirportFrom,
      _AirportTo
}
