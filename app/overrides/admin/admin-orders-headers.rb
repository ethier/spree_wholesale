#insert_after :admin_orders_index_headers, 'admin/hooks/admin_orders_index_headers'
Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
:name => 'admin-orders-headers',
:insert_after => "th:nth-of-type(7)",
:original => '<th><a href="/admin/orders?q%5Bcompleted_at_gt%5D=&amp;q%5Bcompleted_at_lt%5D=&amp;q%5Bcompleted_at_not_null%5D=1&amp;q%5Bcreated_at_gt%5D=&amp;q%5Bcreated_at_lt%5D=&amp;q%5Bs%5D=email+asc" class="sort_link">Customer E-Mail</a></th>',
:partial => "spree/admin/hooks/admin_orders_index_headers",
:disabled => false)
