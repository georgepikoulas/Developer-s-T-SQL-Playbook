use Chinook;
select  BillingCountry,
SUM(UnitPrice * Quantity) as AllTimeSales 
from Invoice
inner join InvoiceLine on InvoiceLine.InvoiceId= Invoice.InvoiceId
where BillingCountry in ('Germany', 'Argetina', 'United Kingdom')
group by  BillingCountry
having	SUM(UnitPrice * Quantity) > 40
order by BillingCountry