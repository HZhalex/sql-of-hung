select * from orders;

select order_status from orders;

select distinct(order_status) from orders;

select count(distinct(order_status)) from orders;

select count(*) as anbatocom
from (select distinct(order_status) from orders);

select * from orders
where order_status IN ('COMPLETE','CLOSED');

SELECT count(*) FROM orders
where order_status LIKE 'C%'

SELECT * FROM orders
where order_id between 1 and 10;

