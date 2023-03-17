select Invoice.InvoiceId, InvoiceDate , UnitPrice, Quantity
from Invoice
inner join InvoiceLine 
on InvoiceLine.InvoiceId = Invoice.InvoiceId