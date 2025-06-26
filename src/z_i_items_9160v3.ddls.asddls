@AbapCatalog.sqlViewName: 'ZV_ITEMS_9160V3'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Items'
@Metadata.ignorePropagatedAnnotations: true


define view Z_I_ITEMS_9160V3 
    as select from zitems_9160v3 as Item
    
    association to parent Z_I_ORDERS_9160V3 as _Order 
    on $projection.order_id = _Order.order_id
    
{
     key order_id,
      key item_id,
      
  name,             
  description,      
  release_date,     
  discontinued_date,
  @Semantics.amount.currencyCode : 'currency_code'
  price, 
  @Semantics.currencyCode: true           
  currency_code,  
  @Semantics.quantity.unitOfMeasure : 'unit_of_measure'  
  height,   
  @Semantics.quantity.unitOfMeasure : 'unit_of_measure'          
  width,       
  @Semantics.quantity.unitOfMeasure : 'unit_of_measure'            
  depth,
  unit_of_measure,
  quantity,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at,
  
  _Order   
      
      
}
