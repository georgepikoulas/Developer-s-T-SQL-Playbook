use Chinook

select 
SUM(Total) as AllTimeSales,
AVG(Total) as AVGSale,
Count(Total) as SalesCount,
MIN(Total) as SmallestScale,
MAX(Total) as BiggestSale
from Invoice