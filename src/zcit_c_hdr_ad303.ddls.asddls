@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION HEADER CLASS'
@Search.searchable: true 
@Metadata.ignorePropagatedAnnotations: true 
@Metadata.allowExtensions: true 
define root view entity ZCIT_C_HDR_AD303 provider contract transactional_query
  as projection on ZCIT_I_HDR_AD303
{
    key Salesdocument,
    Salesdocumenttype,
    Orderreason,
    Salesorganization,
    Distributionchannel,
    Division,@Search.defaultSearchElement: true 
      SalesOffice, 
      SalesGroup, 
      @Semantics.amount.currencyCode: 'Currency' 
      NetPrice, 
      Currency, 
      LocalCreatedBy, 
      LocalCreatedAt, 
      LocalLastChangedBy, 
      LocalLastChangedAt, 
       
      /* Associations */ 
      _salesitem : redirected to composition child ZCIT_C_ITM_AD303
}
