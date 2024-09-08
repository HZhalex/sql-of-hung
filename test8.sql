/*
the sql union qoperator
the union operator is used to combine the result-set of two or more select statements
- every select statement within union must have the same number of columns
- the columns must also have similar data types
- the comlumn in every select statement must also be in the same order

union syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

union all syntax
The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

The following SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:
example:
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
Note: If some customers or suppliers have the same city, each city will only be listed once, because UNION selects only distinct values. Use UNION ALL to also select duplicate values!

SQL UNION ALL With WHERE also union with where
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

another union example
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

lưu ý: khi sử dụng với union khi sử dụng 'Customer' AS Type thì khi 2 cái có chung 1 cái nó sẽ không biến thành 1 cái nữa 
mà nó lấy cả 2 và đề với tiêu đề riêng của mỗi cái và nó chỉ thành 1 cái khi trong 1 bảng cả 2 cái 'Customer' AS Type 
đều giống nhau thì nó chỉ in ra 1 cái

*/








