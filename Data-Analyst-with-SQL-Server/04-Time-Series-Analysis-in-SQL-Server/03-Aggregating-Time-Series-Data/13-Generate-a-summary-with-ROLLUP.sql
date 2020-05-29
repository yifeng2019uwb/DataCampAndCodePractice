/*
Generate a summary with ROLLUP
The ROLLUP operator works best when your non-measure attributes are hierarchical. Otherwise, you may end up weird aggregation levels which don't make intuitive sense.

In this scenario, we wish to aggregate the total number of security incidents in the IncidentRollup table. Management would like to see data aggregated by the combination of calendar year, calendar quarter, and calendar month. In addition, they would also like to see separate aggregate lines for calendar year plus calendar quarter as well as calendar year. Finally, they would like one more line for the grand total. We can do all of this in one operation.
*/

/*
Complete the definition for NumberOfIncidents by adding up the number of incidents over each range.
Fill out the GROUP BY segment, including the WITH ROLLUP operator.

*/
SELECT
	c.CalendarYear,
	c.CalendarQuarterName,
	c.CalendarMonth,
    -- Include the sum of incidents by day over each range
	SUM(ir.NumberOfIncidents) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	ir.IncidentTypeID = 2
GROUP BY
	-- GROUP BY needs to include all non-aggregated columns
	c.CalendarYear,
	c.CalendarQuarterName,
	c.CalendarMonth
-- Fill in your grouping operator
WITH ROLLUP
ORDER BY
	c.CalendarYear,
	c.CalendarQuarterName,
	c.CalendarMonth;

