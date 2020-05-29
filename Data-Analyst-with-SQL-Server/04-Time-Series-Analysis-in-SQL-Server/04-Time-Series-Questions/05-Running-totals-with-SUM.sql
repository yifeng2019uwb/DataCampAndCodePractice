/*
Running totals with SUM()
One of the more powerful uses of window functions is calculating running totals: an ongoing tally of a particular value over a given stretch of time. Here, we would like to use a window function to calculate how many incidents have occurred on each date and incident type in July of 2019 as well as a running tally of the total number of incidents by incident type. A window function will help us solve this problem in one query.
*/

/*
Fill in the correct window function.
Fill in the PARTITION BY clause in the window function, partitioning by incident type ID.
Fill in the ORDER BY clause in the window function, ordering by incident date (in its default, ascending order).
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
    -- Get the total number of incidents
	SUM(ir.NumberOfIncidents) OVER (
      	-- Do this for each incident type ID
		PARTITION BY ir.IncidentTypeID
      	-- Sort by the incident date
		ORDER BY ir.IncidentDate
	) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarYear = 2019
	AND c.CalendarMonth = 7
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentTypeID,
	ir.IncidentDate;
	

