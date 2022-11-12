select * from customer_1

select product_name, category from product where product_price between 5000 and 10000

select * from product order by product_price desc

select count(*) orders, avg(total_amount), max(total_amount), min(total_amount)from orders

select count(*) product_id from orders

select from orders where customer_id >=2

select count(* ) from orders order_date

alter table orders add column order_id serial

select order_id, order_date, product_name, customer_name from orders
left join product on orders.product_id = product.product_id
left join customer_1 on orders.customer_id = customer_1.customer_id

SELECT * from orders where order_date =  CURRENT_DATE - INTERVAL '3 months'

select customer_name as Customers
from customer_1
where customer_id not in
(
    select customer_id from orders
)