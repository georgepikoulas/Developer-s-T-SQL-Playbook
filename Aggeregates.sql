--Basic Resporting on Aggregates
SELECT SUM(Total) AllTimeSales ,
AVG(Total) AS AvgSale,
COUNT(Total) AS TotalCount,
MIN(Total) AS SmallestSale,
MAX(Total) AS  BiggestSale
FROM dbo.Invoice

--Grouping Aggregate results
SELECT BillingCountry,   SUM(Total) as AllTimeSales
FROM dbo.Invoice
GROUP BY BillingCountry


-- Sales Query
SELECT FirstName + ' ' + LastName AS Customer,
BillingCountry,   
SUM(Total) as AllTimeSales,
AVG(Total) AS AvgTotal
FROM dbo.Invoice
inner JOIN  dbo.Customer ON Customer.CustomerId = Invoice.CustomerId
GROUP BY FirstName,LastName, BillingCountry
ORDER BY BillingCountry , LastName


--REDOING THE PREVIOUS QUERY  bevause the Total column is a calculated column and SHOULD NOT BE TRUSTED FOR VALIDITY
SELECT FirstName + ' ' + LastName AS Customer,
BillingCountry,   
SUM(UnitPrice * Quantity) as AllTimeSales
--AVG(UnitPrice * Quantity) AS AvgTotal --REMOVED AS IS NOT VERY TRUSTED
FROM dbo.Invoice
inner JOIN  dbo.Customer ON Customer.CustomerId = Invoice.CustomerId
INNER JOIN dbo.InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY FirstName,LastName, BillingCountry
ORDER BY BillingCountry , LastName


-- restricting aggreage tresults
SELECT BillingCountry,   
SUM(UnitPrice * Quantity) as AllTimeSales
--AVG(UnitPrice * Quantity) AS AvgTotal --REMOVED AS IS NOT VERY TRUSTED
FROM dbo.Invoice
INNER JOIN dbo.InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE BillingCountry IN ('Germany' , 'Argentina' , 'United Kingdom')
GROUP BY  BillingCountry
HAVING SUM(UnitPrice * Quantity) > 40
ORDER BY BillingCountry 
