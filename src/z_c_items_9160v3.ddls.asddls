@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Items'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity Z_C_ITEMS_9160V3 as projection on Z_I_ITEMS_9160V3
{
    
    key order_id as OrderId,
    key item_id as ItemId,
    name as Name,
    description as Description,
    release_date as ReleaseDate,
    discontinued_date as DiscontinuedDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    price as Price,
    @Semantics.currencyCode: true           
    currency_code as CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'  
    height as Height,
    @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'  
    width as Width,
    @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'  
    depth as Depth,
    unit_of_measure as UnitOfMeasure,
    quantity as Quantity,
    last_changed_at as LastChangedAt,
    
    _Order : redirected to parent Z_C_ORDERS_9160V3
    
}
