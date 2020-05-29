/*
Create a time series of a year
The goal of this exercise is to create a series of days for a year. For this task you have to use the following two time/date functions:

GETDATE()
DATEADD(datepart, number, date)
With GETDATE() you get the current time (e.g. 2019-03-14 20:09:14) and with DATEADD(month, 1, GETDATE()) you get current date plus one month (e.g. 2019-04-14 20:09:14).

To get a series of days for a year you need 365 recursion steps. Therefore, increase the number of iterations by OPTION (MAXRECURSION n) where n represents the number of iterations.

*/

/*
Initialize the current time as time.
Select the CTE recursively and combine the anchor and recursive member with the correct statement.
Limit the number of iterations to days in a year minus 1
Increase the maximum number of iterations to the number of days in a year with OPTION (MAXRECURSION n)
*/
WITH time_series AS (
	SELECT 
  		-- Get the current time
	    GETDATE() AS time
  	UNION ALL
	SELECT 
	    DATEADD(day, 1, time)
  	-- Call the CTE recursively
	FROM time_series
  	-- Limit the time series to 1 year minus 1 (365 days -1)
  	WHERE time < GETDATE() + 364)
    
SELECT time
FROM time_series
-- Increase the number of iterations (365 days)
OPTION(MAXRECURSION 365)
