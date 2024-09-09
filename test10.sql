/*
the sql having clause 
the having clause was added to sql because the where keywork cannot be used with aggregate functions
-->HAVING SYNTAX:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

-->EXAMPLES:the following sql statement lists the number of customers in each country sorted high to low (only include countries with more than 5 customers)
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-->more having example:
The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE Employees.LastName = 'Davolio' OR Employees.LastName = 'Fuller'
GROUP BY Employees.LastName
HAVING COUNT(Orders.OrderID) > 25;

*THE SQL EXISTS OPERATOR
the exists operator is used to test for the existence of any record in a subquery
the exists operator returns true if the subquery returns one or more records
EXISTS SYNTAX :

SELECT column_name(s)
FROM table_name
WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);
giải thích theo cách khác nó chỉ trả về đúng hay không giống như trả về true và ko có hiện tượng lặp lại giá trị
kiểu như nó là 1 hàm check sum và trả về đúng 1 giá trị đó

example:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);



*sql any and all operators:
the ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values
--The ANY operator:
returns a boolean value as a result
returns TRUE if ANY of the subquery values meet the condition
ANY means that the condition will be true if the operation is true for any of the values in the range.

ANY SYNTAX:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);

Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).


-->The SQL ALL Operator
The ALL operator:

returns a boolean value as a result
returns TRUE if ALL of the subquery values meet the condition
is used with SELECT, WHERE and HAVING statements
ALL means that the condition will be true only if the operation is true for all values in the range. 

all syntax with select:

SELECT ALL column_name(s)
FROM table_name
WHERE condition;

ALL Syntax With WHERE or HAVING:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
  (SELECT column_name
  FROM table_name
  WHERE condition);

sql any axamples:
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity > 99);

SQL ALL Examples

The following SQL statement lists ALL the product names:
SELECT ALL ProductName
FROM Products
WHERE TRUE;

The following SQL statement lists the ProductName if ALL the records in the OrderDetails table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10):
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

*The SQL SELECT INTO Statement:
The SELECT INTO statement copies data from one table into a new table.
SELECT INTO Syntax
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

example:
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

Tip: SELECT INTO can also be used to create a new, empty table using the schema of another. Just add a WHERE clause that causes the query to return no data:
SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;

*The SQL INSERT INTO SELECT Statement

The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

The INSERT INTO SELECT statement requires that the data types in source and target tables match.

Note: The existing records in the target table are unaffected.
syntax: 

INSERT INTO table2
SELECT * FROM table1
WHERE condition;

INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

Copy "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL):

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

Copy "Suppliers" into "Customers" (fill all columns):

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

Copy only the German suppliers into "Customers":

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';


