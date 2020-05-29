/*
Aggregate window functions
There are several aggregate window functions available to you. In this exercise, we will look at reviewing multiple aggregates over the same window.

Our window this time will be the entire data set, meaning that our OVER() clause will remain empty.
*/

/*
Fill in the correct aggregate function for each column in the result set.
*/
SELECT
	ir.IncidentDate,
	ir.NumberOfIncidents,
    -- Fill in the correct aggregate functions
    -- You do not need to fill in the OVER clause
	SUM(ir.NumberOfIncidents) OVER () AS SumOfIncidents,
	MIN(ir.NumberOfIncidents) OVER () AS LowestNumberOfIncidents,
	MAX(ir.NumberOfIncidents) OVER () AS HighestNumberOfIncidents,
	COUNT(ir.NumberOfIncidents) OVER () AS CountOfIncidents
FROM dbo.IncidentRollup ir
WHERE
	ir.IncidentDate BETWEEN '2019-07-01' AND '2019-07-31'
AND ir.IncidentTypeID = 3;

	