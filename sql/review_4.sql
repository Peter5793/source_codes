-- Date manipulation
SELECT
GETDATE()as DateTimeStamp,
DueDate,
ShipDate,
DATEDIFF(day, ShipDate, DueDate) AS DaysBetween,
DATEDIFF(hour, ShipDate, DueDate) AS HoursBetween,
DATEADD(day, 10, DueDate) AS DueDatePlusTendays
from FactInternetSales
