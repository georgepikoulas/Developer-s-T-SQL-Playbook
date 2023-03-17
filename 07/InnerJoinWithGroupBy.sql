use Chinook;
select FirstName + ' '  + LastName as Customer , BillingCountry,
SUM(Total) as AllTimeSales , AVG(Total)  as AvgPurchanse 
from Invoice
inner join Customer on Invoice.CustomerId = Customer.CustomerId
group by FirstName , LastName,  BillingCountry 
order by BillingCountry, LastName