select  InvoiceId, InvoiceDate, Total,
DATEPART(quarter, InvoiceDate) as quarter,
DATEPART(month	, InvoiceDate) as month,
DATEPART(year , InvoiceDate) as year,
DATEPART(day,InvoiceDate) as day,
DATEDIFF([month], '01/01/2005', InvoiceDate) as MonthsInbusiness
from Invoice
order by MonthsInbusiness