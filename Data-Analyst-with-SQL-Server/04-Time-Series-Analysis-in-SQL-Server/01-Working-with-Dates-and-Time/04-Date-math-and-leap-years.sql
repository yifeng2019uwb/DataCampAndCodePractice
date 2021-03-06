/*
Date math and leap years
Some of you may have experience using R and here we note that leap year date math can be tricky with R and the lubridate package. lubridate has two types of functions: duration and period.

lubridate::ymd(20120229) - lubridate::dyears(4) --> 2008-03-01, which is wrong.

lubridate::ymd(20120229) - lubridate::dyears(1) --> 2011-03-01, which is correct.

lubridate::ymd(20120229) - lubridate::years(4) --> 2008-02-29, which is correct.

lubridate::ymd(20120229) - lubridate::years(1) --> NA, which is unexpected behavior.

We can use the DATEADD() and DATEDIFF() functions to see how SQL Server deals with leap years to see if it has any of the same eccentricities.
*/

/*
Fill in the date parts and intervals needed to determine how SQL Server works on February 29th of a leap year.

2012 was a leap year. The leap year before it was 4 years earlier, and the leap year after it was 4 years later.

*/

DDECLARE
	@LeapDay DATETIME2(7) = '2012-02-29 18:00:00';

-- Fill in the date parts and intervals as needed
SELECT
	DATEADD(DAY, -1, @LeapDay) AS PriorDay,
	DATEADD(DAY, 1, @LeapDay) AS NextDay,
    -- For leap years, we need to move 4 years, not just 1
	DATEADD(YEAR, -4, @LeapDay) AS PriorLeapYear,
	DATEADD(YEAR, 4, @LeapDay) AS NextLeapYear,
	DATEADD(YEAR, -1, @LeapDay) AS PriorYear;

/*
Fill in the date parts and intervals needed to determine how SQL Server works on days next to a leap year.
*/
DECLARE
	@PostLeapDay DATETIME2(7) = '2012-03-01 18:00:00';

-- Fill in the date parts and intervals as needed
SELECT
	DATEADD(DAY, -1, @PostLeapDay) AS PriorDay,
	DATEADD(DAY, 1, @PostLeapDay) AS NextDay,
	DATEADD(YEAR, -4, @PostLeapDay) AS PriorLeapYear,
	DATEADD(YEAR, 4, @PostLeapDay) AS NextLeapYear,
	DATEADD(YEAR, -1, @PostLeapDay) AS PriorYear,
    -- Move 4 years forward and one day back
	DATEADD(DAY, -1, DATEADD(YEAR, 4, @PostLeapDay)) AS NextLeapDay,
    DATEADD(DAY, -2, @PostLeapDay) AS TwoDaysAgo;
	
/*
Taking TwoDaysAgo from the prior step, use the DATEDIFF() function to test how it handles leap years.
*/

DECLARE
	@PostLeapDay DATETIME2(7) = '2012-03-01 18:00:00',
    @TwoDaysAgo DATETIME2(7);

SELECT
	@TwoDaysAgo = DATEADD(DAY, -2, @PostLeapDay);

SELECT
	@TwoDaysAgo AS TwoDaysAgo,
	@PostLeapDay AS SomeTime,
    -- Fill in the appropriate function and date types
	DATEDIFF(DAY, @TwoDaysAgo, @PostLeapDay) AS DaysDifference,
	DATEDIFF(HOUR, @TwoDaysAgo, @PostLeapDay) AS HoursDifference,
	DATEDIFF(MINUTE, @TwoDaysAgo, @PostLeapDay) AS MinutesDifference;




