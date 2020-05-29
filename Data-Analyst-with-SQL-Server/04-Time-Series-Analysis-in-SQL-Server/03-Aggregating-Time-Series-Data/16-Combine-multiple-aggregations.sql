/*
Combine multiple aggregations in one query
In the last three exercises, we walked through the ROLLUP, CUBE, and GROUPING SETS grouping operators. Of these three, GROUPING SETS is the most customizable, allowing you to build out exactly the levels of aggregation you want. GROUPING SETS makes no assumptions about hierarchy (unlike ROLLUP) and can remain manageable with a good number of columns (unlike CUBE).

In this exercise, we want to test several conjectures with our data:

We have seen fewer incidents per month since introducing training in November of 2019.
More incidents occur on Tuesday than on other weekdays.
More incidents occur on weekends than weekdays.
*/

/*
Fill out the grouping sets based on our conjectures above. We want to see the following grouping sets in addition to our grand total:

One set by calendar year and month
One set by the day of the week
One set by whether the date is a weekend or not
*/
SELECT
	c.CalendarYear,
	c.CalendarMonth,
	c.DayOfWeek,
	c.IsWeekend,
	SUM(ir.NumberOfIncidents) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
GROUP BY GROUPING SETS
(
    -- Each non-aggregated column from above should appear once
  	-- Calendar year and month
	(c.CalendarYear, c.CalendarMonth),
  	-- Day of week
	(c.DayOfWeek),
  	-- Is weekend or not
	(c.IsWeekend),
    -- This remains empty; it gives us the grand total
	()
)
ORDER BY
	c.CalendarYear,
	c.CalendarMonth,
	c.DayOfWeek,
	c.IsWeekend;
