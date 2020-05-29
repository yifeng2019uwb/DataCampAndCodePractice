/*
Calculating filtered aggregates
If we want to count the number of occurrences of an event given some filter criteria, we can take advantage of aggregate functions like SUM(), MIN(), and MAX(), as well as CASE expressions. For example, SUM(CASE WHEN ir.IncidentTypeID = 1 THEN 1 ELSE 0 END) will return the count of incidents associated with incident type 1. If you include one SUM() statement for each incident type, you have pivoted the data set by incident type ID.

In this scenario, management would like us to tell them, by incident type, how many "big-incident" days we have had versus "small-incident" days. Management defines a big-incident day as having more than 5 occurrences of the same incident type on the same day, and a small-incident day has between 1 and 5.

*/

/*
Fill in a CASE expression which lets us use the SUM() function to calculate the number of big-incident and small-incident days.
In the CASE expression, you should return 1 if the appropriate filter criterion is met and 0 otherwise.
Be sure to specify the alias when referencing a column, like ir.IncidentDate or it.IncidentType!
*/

-- Fill in the appropriate aggregate functions
-- Fill in the functions and columns
SELECT
	it.IncidentType,
    -- Fill in the appropriate expression
	SUM(CASE WHEN ir.NumberOfIncidents > 5 THEN 1 ELSE 0 END) AS NumberOfBigIncidentDays,
    -- Number of incidents will always be at least 1, so
    -- no need to check the minimum value, just that it's
    -- less than or equal to 5
    SUM(CASE WHEN ir.NumberOfIncidents <= 5 THEN 1 ELSE 0 END) AS NumberOfSmallIncidentDays
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.IncidentType it
		ON ir.IncidentTypeID = it.IncidentTypeID
WHERE
	ir.IncidentDate BETWEEN '2019-08-01' AND '2019-10-31'
GROUP BY
it.IncidentType;


