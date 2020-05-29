/*
Downsample using a calendar table
Management liked the weekly report but they wanted to see every week in 2020, not just the weeks with amenity usage. We can use a calendar table to solve this problem: the calendar table includes all of the weeks, so we can join it to the dbo.DaySpaVisit table to find our answers.

Management would also like to see the first day of each calendar week, as that provides important context to report viewers.
*/

/*
Find and include the week of the calendar year.
Include the minimum value of c.Date in each group as FirstDateOfWeek. This works because we are grouping by week.
Join the Calendar table to the DaySpaVisit table based on the calendar table's date and each day spa customer's date of visit. CustomerVisitStart is a DATETIME2 which includes time, so a direct join would only include visits starting at exactly midnight.
Group by the week of calendar year.
*/
SELECT
	-- Determine the week of the calendar year
	c.CalendarWeekOfYear,
	-- Determine the earliest date in this group
	MIN(c.Date) AS FirstDateOfWeek,
	ISNULL(SUM(dsv.AmenityUseInMinutes), 0) AS AmenityUseInMinutes,
	ISNULL(MAX(dsv.CustomerID), 0) AS HighestCustomerID,
	COUNT(dsv.CustomerID) AS NumberOfAttendees
FROM dbo.Calendar c
	LEFT OUTER JOIN dbo.DaySpaVisit dsv
		-- Connect dbo.Calendar with dbo.DaySpaVisit
		-- To join on CustomerVisitStart, we need to turn 
        -- it into a DATE type
		ON c.Date = CAST(dsv.CustomerVisitStart AS DATE)
WHERE
	c.CalendarYear = 2020
GROUP BY
	-- Arrange into groups
	c.CalendarWeekOfYear
ORDER BY
	c.CalendarWeekOfYear;


