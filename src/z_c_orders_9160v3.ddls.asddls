@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Orders'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity Z_C_ORDERS_9160V3 as projection on Z_I_ORDERS_9160V3
{
    
    key order_id as OrderId,
    email as Email,
    first_name as FirstName,
    last_name as LastName,
    FullName as FullName,
    country as Country,
    delivery_date as DeliveryDate,
    order_status as OrderStatus,
    image_url as ImageUrl,
    created_on as CreatedOn,
    created_by as CreatedBy,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
   
    _Item : redirected to composition child Z_C_ITEMS_9160V3
    
}
