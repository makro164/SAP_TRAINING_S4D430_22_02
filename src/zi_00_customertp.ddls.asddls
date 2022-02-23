@AbapCatalog.sqlViewName: 'ZI00CUSTTP2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Customer'
@VDM.viewType: #TRANSACTIONAL
define view ZI_00_CustomerTP
  as select from ZI_00_CUSTOMER2
{
  key ID,
      Name,
      Street,
      Postcode,
      City,
      Country,
      Discount
}
