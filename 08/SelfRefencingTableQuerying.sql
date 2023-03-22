Select FirstName , LastName,
------------SUBQUERY to get who reports to who because the data  are on the  same  table
(select FirstName + ' ' + LastName from Employee as bosses
where  Employee.ReportsTo = bosses.EmployeeId) as boss
from Employee   