@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION ITEM CLASS'
@Search.searchable: true 
@Metadata.ignorePropagatedAnnotations: true 
@Metadata.allowExtensions: true 
define view entity ZCIT_C_ITM_AD303 as projection on ZCIT_SO_ITM_AD303
{
    key Salesdocument,
    key Salesitemnumber,
    @Search.defaultSearchElement: true 
      Material, 
      Plant, 
      @Semantics.quantity.unitOfMeasure: 'Quantityunits' 
      Quantity, 
      Quantityunits, 
      LocalCreatedBy, 
      LocalCreatedAt, 
      LocalLastChangedBy, 
      LocalLastChangedAt, 
       
      /* Associations */ 
      _salesHeader : redirected to parent ZCIT_C_HDR_AD303
}
