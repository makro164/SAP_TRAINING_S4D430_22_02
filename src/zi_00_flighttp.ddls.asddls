@AbapCatalog.sqlViewName: 'ZI00FLIIGHTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Flight'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
    writeActivePersistence: 'zv00flight',

    semanticKey: ['CarrierID', 'ConnectionID', 'FlightDate'],
    representativeKey: 'FlightDate',

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view ZI_00_FlightTP
  as select from ZI_00_Flight
  association [1..1] to ZI_00_ConnectionTP as _Connection on  _Connection.CarrierID    = ZI_00_Flight.CarrierID
                                                          and _Connection.ConnectionID = ZI_00_Flight.ConnectionID
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      Price,
      CurrencyCode,
      Planetype,
      SeatsMax,
      SeatsOccupied,
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Connection
}
