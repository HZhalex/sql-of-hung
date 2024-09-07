select * from Customers
order by customer_id DESC;

SELECT * FROM Customers LIMIT 3;

SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

SELECT * FROM Customers
WHERE customer_state='TX'
LIMIT 3;

SELECT * FROM Customers
ORDER BY customer_id DESC
LIMIT 3;

SELECT * FROM Customers
ORDER BY CustomerName DESC
FETCH FIRST 3 ROWS ONLY;