/*
Rounding dates
SQL Server does not have an intuitive way to round down to the month, hour, or minute. You can, however, combine the DATEADD() and DATEDIFF() functions to perform this rounding.

To round the date 1914-08-16 down to the year, we would call DATEADD(YEAR, DATEDIFF(YEAR, 0, '1914-08-16'), 0). To round that date down to the month, we would call DATEADD(MONTH, DATEDIFF(MONTH, 0, '1914-08-16'), 0). This works for several other date parts as well.
*/

/*
Use DATEADD() and DATEDIFF() in conjunction with date parts to round down our time to the day, hour, and minute.
*/

DECLARE
	@SomeTime DATETIME2(7) = '2018-06-14 16:29:36.2248991';

-- Fill in the appropriate functions and date parts
SELECT
	DATEADD(DAY, DATEDIFF(DAY, 0, @SomeTime), 0) AS RoundedToDay,
	DATEADD(HOUR, DATEDIFF(HOUR, 0, @SomeTime), 0) AS RoundedToHour,
	DATEADD(MINUTE, DATEDIFF(MINUTE, 0, @SomeTime), 0) AS RoundedToMinute;
	