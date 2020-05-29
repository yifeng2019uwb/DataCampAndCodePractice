/*
Investigating window frames
In addition to the PARTITION BY and ORDER BY clauses, window functions can include frames which tell the database engine what we include as relevant to the window.

Here we will look at the same query with four different frames and see how the results differ.

We will specify ROWS or RANGE based on whether we want to include individual rows or a range of values. We will specify the "preceding" clause, which tells how many rows (or what range of values) we want prior to the current row. We will also specify the "following" clause, which tells what we want from the current row forward.
*/

/*
Calculate a running total, which is the range which includes UNBOUNDED preceding rows and ends with the current row.

*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
	SUM(ir.NumberOfIncidents) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
      	-- Add the correct range / rows clause
      	-- Add the correct window frame bound ("preceding"
    	-- and "following" sections)
		___ BETWEEN ___ AND ___
	) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarYear = 2019
	AND c.CalendarMonth = 7
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentDate,
	ir.IncidentTypeID;



/*
Calculate the sum across the entire range. Our range will stretch from UNBOUNDED preceding to UNBOUNDED following.

*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
	SUM(ir.NumberOfIncidents) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
      	-- Add the correct range / rows clause
      	-- Add the correct window frame bound ("preceding"
    	-- and "following" sections)
		RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
	) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarYear = 2019
	AND c.CalendarMonth = 7
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentDate,
	ir.IncidentTypeID;


/*
Calculate the sum of the three preceding rows and the current row. Here, we look at ROWS rather than a range.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
	SUM(ir.NumberOfIncidents) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
      	-- Add the correct range / rows clause
      	-- Add the correct window frame bound ("preceding"
    	-- and "following" sections)
		ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
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


/*
Calculate the sum from the two preceding rows through to the two following rows.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
	ir.NumberOfIncidents,
	SUM(ir.NumberOfIncidents) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
      	-- Add the correct range / rows clause
      	-- Add the correct window frame bound ("preceding"
    	-- and "following" sections)
		ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
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


