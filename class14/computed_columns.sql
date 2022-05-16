select order_id, item_price, quantity from table_a;

insert into table_b (order_id, total_price)
select order_id, item_price * quantity from table_a;

create view v_price_totals as
select order_id, item_price * quantity from table_a;

