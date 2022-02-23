@AbapCatalog.sqlViewName: 'ZI00CUST2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Interface-View: Customer'
@VDM.viewType: #BASIC
define view ZI_00_CUSTOMER2
  as select from scustom
{
  key id       as ID,
      name     as Name,
      street   as Street,
      postcode as Postcode,
      city     as City,
      country  as Country,
      discount as Discount
}
