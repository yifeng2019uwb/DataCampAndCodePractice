/*
Calculating median in SQL Server
There is no MEDIAN() function in SQL Server. The closest we have is PERCENTILE_CONT(), which finds the value at the nth percentile across a data set.

We would like to figure out how far the median differs from the mean by incident type in our incident rollup set. To do so, we can compare the AVG() function from the prior exercise to PERCENTILE_CONT(). These are window functions, which we will cover in more detail in chapter 4. For now, know that PERCENTILE_CONT() takes a parameter, the percentile (a decimal ranging from from 0. to 1.). The percentile must be within an ordered group inside the WITHIN GROUP clause and OVER a certain range if you need to partition the data. In the WITHIN GROUP section, we need to order by the column whose 50th percentile we want.
*/

/*
Fill in the missing value for PERCENTILE_CONT().
Inside the WITHIN GROUP() clause, order by number of incidents descending.
In the OVER() clause, partition by IncidentType (the actual text value, not the ID).
*/
SELECT DISTINCT
	it.IncidentType,
	AVG(CAST(ir.NumberOfIncidents AS DECIMAL(4,2)))
	    OVER(PARTITION BY it.IncidentType) AS MeanNumberOfIncidents,
    --- Fill in the missing value
	PERCENTILE_CONT(0.5)
    	-- Inside our group, order by number of incidents DESC
    	WITHIN GROUP (ORDER BY ir.NumberOfIncidents DESC)
        -- Do this for each IncidentType value
        OVER (PARTITION BY it.IncidentTypeID) AS MedianNumberOfIncidents,
	COUNT(1) OVER (PARTITION BY it.IncidentType) AS NumberOfRows
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.IncidentType it
		ON ir.IncidentTypeID = it.IncidentTypeID
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	c.CalendarQuarter = 2
	AND c.CalendarYear = 2020;

	