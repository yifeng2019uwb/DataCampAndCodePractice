/*
Calculate fiscal year without a calendar table
The last two exercises introduced calendar tables, which are extremely helpful. To give you an idea of just how helpful they are, it is instructive to try to solve the same problem without a calendar table.

Our fiscal year runs from July 1 of the current calendar year through June 30 of the next calendar year.

Note that there are 21 lines to this query so you may need to scroll a bit to catch everything.


*/

/*
Fill in the fiscal day of the year in the SELECT clause.
In the CROSS APPLY function, fill in the function (using date part WEEK) to determine the fiscal week of the year.
In the WHERE clause, fill in fiscal year 2019, which runs from July 1 of 2019 through June 30 of 2020.
In the WHERE clause, check whether we are past the 30th week of the fiscal year and determine if the date is a weekend by using the DATEPART() function.
*/

-- Show data during weekends in FY2019 after fiscal week 30
-- Limit results to incident type 4
SELECT
	ir.IncidentDate,
    -- Fiscal day of year: days since the start of the FY
	DATEDIFF(DAY, fy.FYStart, ir.IncidentDate) + 1 AS FiscalDayOfYear,
	fyweek.FiscalWeekOfYear
FROM dbo.IncidentRollup ir
	CROSS APPLY (SELECT '2019-07-01' AS FYStart) fy
    -- Number of weeks since the fiscal year began
	CROSS APPLY (
      SELECT DATEDIFF(WEEK, fy.FYStart, ir.IncidentDate) + 1 AS FiscalWeekOfYear
    ) fyweek
WHERE
	ir.IncidentTypeID = 4
    -- Fiscal year 2019, in dates
 	AND ir.IncidentDate BETWEEN '2019-07-01' AND '2020-06-30'
	-- Determine if we are past the 30th fiscal week of the year
	AND fyweek.FiscalWeekOfYear > 30
	-- Determine if this is a weekend by using WEEKDAY
 	AND DATEPART(WEEKDAY, ir.IncidentDate) IN (1, 7);


