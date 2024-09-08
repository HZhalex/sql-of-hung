/* 
IN OPERATER
select * from customers 
where country in ('germany','france','uk');
can use NOT IN 
select * from customers
where customersid in (select customerid from orders)
*/

select * from orders;

select count(*) as hung , order_status
from orders
where order_status in ('CLOSED', 'COMPLETE')
GROUP BY order_status;

/*
SQL BETWEEN OPERATOR
the between operator select within a given range the value can be numbers text or dates
the between operator is inclusive begin and end values are included
syntax:
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

beside that can be used NOT BETWEEN

select * from products
where price not berween 10 and 20
and categoryID IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
*/
select * from orders;

select * from orders
where order_date between '2013-07-25' and '2013-07-26';





