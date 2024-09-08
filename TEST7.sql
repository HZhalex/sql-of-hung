/*
AS is Optional

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;
*/

select * from orders;

SELECT ProductName AS [My Great Products]
FROM Products;

select orders ID 
FROM orders;

select order_date AS "My Great Products"
from orders;

select * from customers ;

select  CONCAT(customer_fname , ' ' , customer_lname) as "the name of customer"
from customers;

/* 
It might seem useless to use aliases on tables, but when you are using more than one table in your queries, it can make the SQL statements shorter.
example:
	SELECT o.OrderID, o.OrderDate, c.CustomerName
	FROM Customers AS c, Orders AS o
	WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

--> SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
	FROM Customers, Orders
	WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;
*/
/*
SQL JOIN
--(INNER) JOIN: Returns records that have matching values in both tables
Note: The INNER JOIN keyword returns only rows with a match in both tables. Which means that if you have a product with no CategoryID, or with a CategoryID that is not present in the Categories table, that record would not be returned in the result.
--> SYNTAX 
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

BESIDE 
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

--LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

--RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
example:
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).

--FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
the full outer join keyword returns all records when there is a match in left table 1 or right table 2 table records
Note: FULL OUTER JOIN can potentially return very large result-sets!

example:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

Note: The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches or not. So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.

--sql self join
--> syntax :
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
T1 and T2 are different table aliases for the same table.

The following SQL statement matches customers that are from the same city:

example
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;













