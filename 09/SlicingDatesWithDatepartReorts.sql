select  InvoiceId, InvoiceDate, Total,
DATEPART(quarter, InvoiceDate) as quarter,
DATEPART(month	, InvoiceDate) as month,
DATEPART(year , InvoiceDate) as year,
DATEPART(day,InvoiceDate) as day

from Invoice