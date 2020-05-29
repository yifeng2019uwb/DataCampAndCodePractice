/*
Break a date and time into component parts
Although YEAR(), MONTH(), and DAY() are helpful functions and are easy to remember, we often want to break out dates into different component parts such as the day of week, week of year, and second after the minute. This is where functions like DATEPART() and DATENAME() come into play.

Here we will use the night the Berlin Wall fell, November 9th, 1989.
*/

/*

Using the DATEPART() function, fill in the appropriate date parts. 
For a list of parts, review https://docs.microsoft.com/en-us/sql/t-sql/functions/datepart-transact-sql
*/

DECLARE
	@BerlinWallFalls DATETIME2(7) = '1989-11-09 23:49:36.2294852';

-- Fill in each date part
SELECT
	DATEPART(YEAR, @BerlinWallFalls) AS TheYear,
	DATEPART(MONTH, @BerlinWallFalls) AS TheMonth,
	DATEPART(DAY, @BerlinWallFalls) AS TheDay,
	DATEPART(DayOfYear, @BerlinWallFalls) AS TheDayOfYear,
    -- Day of week is WEEKDAY
	DATEPART(weekday, @BerlinWallFalls) AS TheDayOfWeek,
	DATEPART(week, @BerlinWallFalls) AS TheWeek,
	DATEPART(second, @BerlinWallFalls) AS TheSecond,
	DATEPART(nanosecond, @BerlinWallFalls) AS TheNanosecond;


	/*
	Using the DATENAME() function, fill in the appropriate function calls.
	*/

	DECLARE
	@BerlinWallFalls DATETIME2(7) = '1989-11-09 23:49:36.2294852';

-- Fill in the function to show the name of each date part
SELECT
	DATENAME(YEAR, @BerlinWallFalls) AS TheYear,
	DATENAME(MONTH, @BerlinWallFalls) AS TheMonth,
	DATENAME(DAY, @BerlinWallFalls) AS TheDay,
	DATENAME(DAYOFYEAR, @BerlinWallFalls) AS TheDayOfYear,
    -- Day of week is WEEKDAY
	DATENAME(WEEKDAY, @BerlinWallFalls) AS TheDayOfWeek,
	DATENAME(WEEK, @BerlinWallFalls) AS TheWeek,
	DATENAME(SECOND, @BerlinWallFalls) AS TheSecond,
	DATENAME(NANOSECOND, @BerlinWallFalls) AS TheNanosecond;

/*
Question
How many DATENAME() results differ from their DATEPART() counterparts?

*/
