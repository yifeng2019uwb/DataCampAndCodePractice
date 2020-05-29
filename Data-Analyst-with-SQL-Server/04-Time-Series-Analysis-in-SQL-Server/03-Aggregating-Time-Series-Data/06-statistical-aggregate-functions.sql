/*
Working with statistical aggregate functions
SQL Server offers several aggregate functions for statistical purpose. The AVG() function generates the mean of a sample. STDEV() and STDEVP() give us the standard deviation of a sample and of a population, respectively. VAR() and VARP() give us the variance of a sample and a population, respectively. These are in addition to the aggregate functions we learned about in the previous exercise, including SUM(), COUNT(), MIN(), and MAX().

In this exercise, we will look once more at incident rollup and incident type data, this time for quarter 2 of calendar year 2020. We would like to get an idea of how much spread there is in incident occurrence--that is, if we see a consistent number of incidents on a daily basis or if we see wider swings.
*/

/*
Fill in the missing aggregate functions. For standard deviation and variance, use the sample functions rather than population functions.
*/

-- Fill in the missing function names
SELECT
	it.IncidentType,
	AVG(ir.NumberOfIncidents) AS MeanNumberOfIncidents,
	AVG(CAST(ir.NumberOfIncidents AS DECIMAL(4,2))) AS MeanNumberOfIncidents,
	STDEV(ir.NumberOfIncidents) AS NumberOfIncidentsStandardDeviation,
	VAR(ir.NumberOfIncidents) AS NumberOfIncidentsVariance,
	COUNT(1) AS NumberOfRows
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.IncidentType it
		ON ir.IncidentTypeID = it.IncidentTypeID
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarQuarter = 2
	AND c.CalendarYear = 2020
GROUP BY
it.IncidentType;