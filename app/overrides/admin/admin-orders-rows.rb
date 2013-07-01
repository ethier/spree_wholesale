# insert_after :admin_orders_index_rows,    'admin/hooks/admin_orders_index_rows'
Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
:name => 'admin-orders-rows',
:insert_after => "td:nth-of-type(6)",
:partial => "spree/admin/hooks/admin_orders_index_rows",
:disabled => false)
