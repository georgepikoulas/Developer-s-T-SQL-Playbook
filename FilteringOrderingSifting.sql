--Ordering result top 10
SELECT TOP 10 FirstName + ' ' + LastName AS Name , Email , Country
FROM dbo.Customer 
INNER JOIN dbo.Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'Brazil'
ORDER BY Total DESC


--Sequential ordering
SELECT FirstName + ' ' + LastName AS Name , Email , Country
FROM dbo.Customer 
INNER JOIN dbo.Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'USA' OR Country = 'Canada'
ORDER BY Country DESC , LastName DESC


-- Filtering By Sets
SELECT FirstName + ' ' + LastName AS Name , Email , Country
FROM dbo.Customer 
INNER JOIN dbo.Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country IN ('USA', 'Canada')
AND Total > 5
ORDER BY Country DESC , LastName DESC

-- Using OFFSET to remove a numebr of rows that are maybe anomalous
SELECT  FirstName + ' ' + LastName AS Name , Email , Country, InvoiceId, InvoiceDate, Total
FROM dbo.Customer 
INNER JOIN dbo.Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'USA'
ORDER BY Total DESC
offset 1 rows