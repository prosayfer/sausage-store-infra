create unique index pk_product_id on product(id);
create unique index pk_orders_id on orders(id);
create index idx_order_product_order_id on order_product(order_id);
create index idx_order_product_product_id on order_product(product_id);