/*
Seeing the prior three periods
The LAG() and LEAD() window functions give us the ability to look backward or forward in time, respectively. This gives us the ability to compare period-over-period data in a single, easy query. Each call to LAG() or LEAD() returns either a NULL or a single row. If you want to see multiple periods back, you can include multiple calls to LAG() or LEAD().

In this exercise, we want to compare the number of security incidents by day for incident types 1 and 2 during July of 2019, specifically the period starting on July 2nd and ending July 31st. Management would like to see a rolling four-day window by incident type to see if there are any significant trends, starting two days before and looking one day ahead.
*/

/*
Fill in the SQL to return the number of incidents from two periods ago.
Fill in the SQL to return the number of incidents from the prior period.
Fill in the SQL to return the number of incidents from the next period.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
    -- Fill in two periods ago
	LAG(ir.NumberOfIncidents, 2) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
	) AS Trailing2Day,
    -- Fill in one period ago
	LAG(ir.NumberOfIncidents, 1) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
	) AS Trailing1Day,
	ir.NumberOfIncidents AS CurrentDayIncidents,
    -- Fill in next period
	LEAD(ir.NumberOfIncidents, 1) OVER (
		PARTITION BY ir.IncidentTypeID
		ORDER BY ir.IncidentDate
	) AS NextDay
FROM dbo.IncidentRollup ir
WHERE
	ir.IncidentDate >= '2019-07-01'
	AND ir.IncidentDate <= '2019-07-31'
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentTypeID,
	ir.IncidentDate;
	