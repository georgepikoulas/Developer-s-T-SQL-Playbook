use Chinook;
select BillingCountry,
SUM(Total) as AllTimeSales 
from Invoice
group by BillingCountry 
order by AllTimeSales desc