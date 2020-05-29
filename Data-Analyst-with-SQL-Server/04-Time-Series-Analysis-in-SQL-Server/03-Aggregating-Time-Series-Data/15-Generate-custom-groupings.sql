/*
Generate custom groupings with GROUPING SETS
The GROUPING SETS operator allows us to define the specific aggregation levels we desire.

In this scenario, management would like to see something similar to a ROLLUP but without quite as much information. Instead of showing every level of aggregation in the hierarchy, management would like to see three levels: grand totals; by year; and by year, quarter, and month.
*/

/*
Fill out the GROUP BY segment using GROUPING SETS. We want to see:
One row for each combination of year, quarter, and month (in that hierarchical order)
One row for each year
One row with grand totals (that is, a blank group)
*/
SELECT
	c.CalendarYear,
	c.CalendarQuarterName,
	c.CalendarMonth,
	SUM(ir.NumberOfIncidents) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	ir.IncidentTypeID = 2
-- Fill in your grouping operator here
GROUP BY GROUPING SETS
(
  	-- Group in hierarchical order:  calendar year,
    -- calendar quarter name, calendar month
	(c.CalendarYear, c.CalendarQuarterName, c.CalendarMonth),
  	-- Group by calendar year
	(c.CalendarYear),
    -- This remains blank; it gives us the grand total
	()
)
ORDER BY
	c.CalendarYear,
	c.CalendarQuarterName,
	c.CalendarMonth;
	