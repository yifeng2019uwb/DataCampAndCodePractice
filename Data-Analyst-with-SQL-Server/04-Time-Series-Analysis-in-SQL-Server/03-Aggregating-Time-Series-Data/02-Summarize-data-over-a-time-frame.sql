/*

Summarize data over a time frame
There are several useful aggregate functions in SQL Server which we can use to summarize our data over time frames and gain insights. In the following example, you will look at a set of incident reports at a fictional company. They have already rolled up their incidents to the daily grain, giving us a number of incidents per type and day. We would like to investigate further and review incidents over a three-month period, from August 1 through October 31st, and gain basic insights through aggregation.

The key aggregate functions we will use are COUNT(), SUM(), MIN(), and MAX(). In the next exercise, we will look at some of the statistical aggregate functions.

*/

/*
Fill in the appropriate aggregate function based on the column name. Choose from COUNT(), SUM(), MIN(), and MAX() for each.
*/

-- Fill in the appropriate aggregate functions
SELECT
	it.IncidentType,
	COUNT(1) AS NumberOfRows,
	SUM(ir.NumberOfIncidents) AS TotalNumberOfIncidents,
	MIN(ir.NumberOfIncidents) AS MinNumberOfIncidents,
	MAX(ir.NumberOfIncidents) AS MaxNumberOfIncidents,
	MIN(ir.IncidentDate) As MinIncidentDate,
	MAX(ir.IncidentDate) AS MaxIncidentDate
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.IncidentType it
		ON ir.IncidentTypeID = it.IncidentTypeID
WHERE
	ir.IncidentDate BETWEEN '2019-08-01' AND '2019-10-31'
GROUP BY
	it.IncidentType;
