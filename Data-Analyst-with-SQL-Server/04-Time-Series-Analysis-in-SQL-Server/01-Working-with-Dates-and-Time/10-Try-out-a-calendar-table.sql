/*
Try out a calendar table
Calendar tables are also known in the warehousing world as date dimensions. A calendar table is a helpful utility table which you can use to perform date range calculations quickly and efficiently. This is especially true when dealing with fiscal years, which do not always align to a calendar year, or holidays which may not be on the same date every year.

In our example company, the fiscal year starts on July 1 of the current calendar year, so Fiscal Year 2019 started on July 1, 2019 and goes through June 30, 2020. All of this information is in a table called dbo.Calendar.
*/

/*
Find the dates of all Tuesdays in December covering the calendar years 2008 through 2010.
*/

-- Find Tuesdays in December for calendar years 2008-2010
SELECT
	c.Date
    FROM dbo.Calendar c
WHERE
	c.MonthName = 'December'
	AND c.DayName = 'Tuesday'
	AND c.CalendarYear BETWEEN 2008 AND 2010
ORDER BY
	c.Date;


/*
Find the dates for fiscal week 29 of fiscal year 2019.
*/
-- Find fiscal week 29 of fiscal year 2019
SELECT
	c.Date
FROM dbo.Calendar c
WHERE
    -- Instead of month, use the fiscal week
	c.FiscalWeekOfYear = 29
    -- Instead of calendar year, use fiscal year
	AND c.FiscalYear = 2019
ORDER BY
	c.Date ASC;
