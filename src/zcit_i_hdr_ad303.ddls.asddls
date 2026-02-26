@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEADER INTERFACE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCIT_I_HDR_AD303 as select from ZCIT_SO_HDR_303
composition [0..*] of ZCIT_SO_ITM_AD303 as _salesitem 
{
    key salesdocument as Salesdocument,
    salesdocumenttype as Salesdocumenttype,
    orderreason as Orderreason,
    salesorganization as Salesorganization,
    distributionchannel as Distributionchannel,
    division as Division,
    salesoffice as Salesoffice,
    salesgroup as Salesgroup,@Semantics.amount.currencyCode: 'Currency' 
      netprice              as NetPrice, 
      currency              as Currency, 
      
      @Semantics.user.createdBy: true 
      local_created_by      as LocalCreatedBy, 
      @Semantics.systemDateTime.createdAt: true 
      local_created_at      as LocalCreatedAt, 
      @Semantics.user.lastChangedBy: true 
      local_last_changed_by as LocalLastChangedBy, 
      @Semantics.systemDateTime.localInstanceLastChangedAt: true 
      local_last_changed_at as LocalLastChangedAt, 
    _salesitem 
     // Make association public
}
