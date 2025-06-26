@AbapCatalog.sqlViewName: 'ZV_ORDERS_9160V3'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface - Orders'


define root view Z_I_ORDERS_9160V3
  as select from zorders_9160v3 as Orders

   composition [0..*] of Z_I_ITEMS_9160V3 as _Item

{
  key order_id,
      email,
      first_name,
      last_name,
//      @UI: {
//         lineItem: [ { position: 10, importance: #HIGH, label: 'Nombre completo' }],
//         identification: [ { position: 10 } ]
//            } 
//      @EndUserText.label: 'Full Name'
//      concat( last_name, concat( ', ', first_name ) ) as FullName,
      country,
      delivery_date,
      order_status,
      image_url,
      @Semantics.systemDateTime.createdAt: true
      created_on,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,

      _Item
}
