use Chinook;
select  FirstName + ' ' + LastName as Name , Email , Country, 
InvoiceId,InvoiceDate,Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country IN ( 'USA' , 'Canada', 'Argentina')
and Total > 5
order by Country desc, LastName desc