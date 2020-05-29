/*
View all aggregations with CUBE
The CUBE operator provides a cross aggregation of all combinations and can be a huge number of rows. This operator works best with non-hierarchical data where you are interested in independent aggregations as well as the combined aggregations.

In this scenario, we wish to find the total number of security incidents in the IncidentRollup table but will not follow a proper hierarchy. Instead, we will focus on aggregating several unrelated attributes.
*/

/*
Fill in the missing columns from dbo.Calendar in the SELECT clause.
Fill out the GROUP BY segment, including the CUBE operator.
*/
SELECT
	-- Use the ORDER BY clause as a guide for these columns
    -- Don't forget that comma after the third column if you
    -- copy from the ORDER BY clause!
	ir.IncidentTypeID,
	c.CalendarQuarterName,
	c.WeekOfMonth,
	SUM(ir.NumberOfIncidents) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
	ir.IncidentTypeID IN (3, 4)
GROUP BY
	-- GROUP BY should include all non-aggregated columns
	ir.IncidentTypeID,
	c.CalendarQuarterName,
	c.WeekOfMonth
-- Fill in your grouping operator
WITH CUBE
ORDER BY
	ir.IncidentTypeID,
	c.CalendarQuarterName,
	c.WeekOfMonth;

	
