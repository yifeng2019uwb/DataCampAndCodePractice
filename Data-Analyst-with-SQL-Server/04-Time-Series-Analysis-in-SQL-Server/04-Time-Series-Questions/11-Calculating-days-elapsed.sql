/*
Calculating days elapsed between incidents
Something you might have noticed in the prior two exercises is that we don't always have incidents on every day of the week, so calling LAG() and LEAD() the "prior day" is a little misleading; it's really the "prior period." Someone in management noticed this as well and, at the end of July, wanted to know the number of days between incidents. To do this, we will calculate two values: the number of days since the prior incident and the number of days until the next incident.

Recall that DATEDIFF() gives the difference between two dates. We can combine this with LAG() and LEAD() to get our results.*/

/*
Calculate the days since the last incident using a combination of DATEDIFF() and LAG() or LEAD().
Calculate the days until the next incident using a combination of DATEDIFF() and LAG() or LEAD().
NOTE: you will not need to use the NumberOfIncidents column in this exercise.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
    -- Fill in the days since last incident
	DATEDIFF(DAY, LAG(ir.IncidentDate, 1) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
	), ir.IncidentDate) AS DaysSinceLastIncident,
    -- Fill in the days until next incident
	DATEDIFF(DAY, ir.IncidentDate, LEAD(ir.IncidentDate, 1) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
	)) AS DaysUntilNextIncident
FROM dbo.IncidentRollup ir
WHERE
	ir.IncidentDate >= '2019-07-02'
	AND ir.IncidentDate <= '2019-07-31'
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentTypeID,
	ir.IncidentDate;