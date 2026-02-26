@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEM INTERFACE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCIT_SO_ITM_AD303 as 
select from ZCIT_SO_ITM_303 association to parent ZCIT_I_HDR_AD303 as _salesHeader
 on $projection.SalesDocument = _salesHeader.SalesDocument 
{
    key salesdocument as Salesdocument,
    key salesitemnumber as Salesitemnumber,
    material as Material,
    plant as Plant, @Semantics.quantity.unitOfMeasure: 'Quantityunits' 
      quantity              as Quantity, 
      quantityunits         as Quantityunits, 
      
      @Semantics.user.createdBy: true 
      local_created_by      as LocalCreatedBy, 
      @Semantics.systemDateTime.createdAt: true 
      local_created_at      as LocalCreatedAt, 
      @Semantics.user.lastChangedBy: true 
      local_last_changed_by as LocalLastChangedBy, 
      @Semantics.systemDateTime.localInstanceLastChangedAt: true 
      local_last_changed_at as LocalLastChangedAt, 
       
      /* Associations */ 
      _salesHeader 
}
