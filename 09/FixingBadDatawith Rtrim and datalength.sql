Select  name, LEN(name) -- gives length without spacesd
from Artist 
where DATALENGTH(Name) <> DATALENGTH(rtrim(name))

--try get data mismatching length