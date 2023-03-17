USe BigMachine;
insert into Users (Email,First,Last)
select Email,FirstName , LastName 
from  Chinook.dbo.Customer

select * from	Users