select * from orders
order by order_status ASC;

select * from orders
order by order_status, order_id;

select * from orders
where order_status = 'CLOSED' AND order_id > 10 or order_customer_id > 1000;


select * from orders
where not order_status = 'CLOSED';

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');