#insert_after :admin_orders_index_search,  'admin/hooks/admin_orders_index_search'
Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
:name => 'admin-orders-search',
:insert_bottom => "div.omega.four.columns",
:original => '<div class="field checkbox"><label style="margin-top: 20px; "><input name="q[inventory_units_shipment_id_null]" type="hidden" value="0"><input id="q_inventory_units_shipment_id_null" name="q[inventory_units_shipment_id_null]" type="checkbox" value="1">Show only unfulfilled orders</label></div>',
:partial => "spree/admin/hooks/admin_orders_index_search",
:disabled => false)
