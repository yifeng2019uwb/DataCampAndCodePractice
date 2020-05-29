/*
Calculating moving averages
Instead of looking at a running total from the beginning of time until now, management would like to see the average number of incidents over the past 7 days--that is, starting 6 days ago and ending on the current date. Because this is over a specified frame which changes over the course of our query, this is called a moving average.

SQL Server does not have the ability to look at ranges of time in window functions, so we will need to assume that there is one row per day and use the ROWS clause.
*/

/*
Fill in the correct window function to perform a moving average starting from 6 days ago through today.
Fill in the window frame, including the ROWS clause, window frame preceding, and window frame following.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
    -- Fill in the correct window function
	AVG(ir.NumberOfIncidents) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
      	-- Fill in the three parts of the window frame
		ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
	) AS MeanNumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarYear = 2019
	AND c.CalendarMonth IN (7, 8)
	AND ir.IncidentTypeID = 1
ORDER BY
	ir.IncidentTypeID,
	ir.IncidentDate;

	