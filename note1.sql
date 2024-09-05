/* 
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');        */
/*
-- chèn đúng không sẽ bị xuất hiện giá trị null trong bảng
--SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60; */

/*
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
*/
