use Chinook;
select  FirstName + ' ' + LastName as Name , Email , Country, 
InvoiceId,InvoiceDate,Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where country = 'USA'
order by Total desc
offset 1 rows