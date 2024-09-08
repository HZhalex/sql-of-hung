/* 
aggregate functions are often used with the group by clause of the select statement the group by 
clause splits the result-set into group of values and the aggregate function can be used to return a single value for each group
aggregate functions ignore null values (except for count())
MIN(): THE MIN FUNCTION RETURN THE SMALLEST VALUE OF THE SELECTED COLUMN
MAX(): THE MAX FUNCTION RETURN THE LARGEST VALUE OF THE SELECTED COLUMN
EX :	SELECT MIN(Price) AS SmallestPrice, CategoryID
		FROM Products
		GROUP BY CategoryID;
COUNT():The COUNT() function returns the number of rows that matches a specified criterion.
beside :You can specify a column name instead of the asterix symbol (*).
		If you specify a column name instead of (*), NULL values will not be counted.
EX :	SELECT COUNT(DISTINCT Price)
		FROM Products;
		
SUM():The SUM() function returns the total sum of a numeric column.
ex:
	SELECT OrderID, SUM(Quantity) AS [Total Quantity]
	FROM OrderDetails
	GROUP BY OrderID;

AVG():The AVG() function returns the average value of a numeric column.
ex: 
	SELECT AVG(Price) AS AveragePrice, CategoryID
	FROM Products
	GROUP BY CategoryID;
another:
	SELECT * FROM Products
	WHERE price > (SELECT AVG(price) FROM Products);
*/

/*
LIKE OPERATER
SOME LIEK IS USED IN SQL HAVE EVER SEEN 
'a%' -  'L_nd__' - '%L%' -  'La%' - '%a' - 'b%s' - '%or%' -  'a__%' - '_r%' - 'Spain'
You can also combine any number of conditions using AND or OR operators.
EX:	SELECT * FROM Customers
	WHERE Customers LIEK 'a%' OR CustomerName LIKE 'b%';

*/
select customer_fname from Customers;

select * from Customers
where customer_fname Like '[A-B]%'  ;





