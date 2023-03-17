use Chinook;
select FirstName + ' '  + LastName as Customer , BillingCountry,
SUM(UnitPrice * Quantity) as AllTimeSales 
from Invoice
inner join Customer on Invoice.CustomerId = Customer.CustomerId
inner join InvoiceLine on InvoiceLine.InvoiceId= Invoice.InvoiceId
group by FirstName , LastName,  BillingCountry 
order by BillingCountry, LastName