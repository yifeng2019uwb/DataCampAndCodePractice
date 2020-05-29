/*
Downsample to a weekly grain
Management would like to see how well people have utilized the spa in 2020. They would like to see results by week, reviewing the total number of minutes of amenity usage, the number of attendees, and the customer with the largest customer ID that week to see if new customers are coming in.

We can use functions in SQL Server to downsample to a fixed grain like this. One such function is DATEPART().
*/

/*
Downsample the day spa visit data to a weekly grain using the DATEPART() function.
Find the customer with the largest customer ID for a given week.
*/
SELECT
	-- Downsample to a weekly grain
	DATEPART(WEEK, dsv.CustomerVisitStart) AS Week,
	SUM(dsv.AmenityUseInMinutes) AS AmenityUseInMinutes,
	-- Find the customer with the largest customer ID for that week
	MAX(dsv.CustomerID) AS HighestCustomerID,
	COUNT(1) AS NumberOfAttendees
FROM dbo.DaySpaVisit dsv
WHERE
	dsv.CustomerVisitStart >= '2020-01-01'
	AND dsv.CustomerVisitStart < '2021-01-01'
GROUP BY
	DATEPART(WEEK, dsv.CustomerVisitStart)
ORDER BY
	Week;



