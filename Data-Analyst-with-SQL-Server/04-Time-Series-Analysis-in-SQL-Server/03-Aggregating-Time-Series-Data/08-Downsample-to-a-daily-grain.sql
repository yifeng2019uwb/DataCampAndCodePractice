/*
Downsample to a daily grain
Rolling up data to a higher grain is a common analytical task. We may have a set of data with specific time stamps and a need to observe aggregated results. In SQL Server, there are several techniques available depending upon your desired grain.

For these exercises, we will look at a fictional day spa. Spa management sent out coupons to potential new customers for the period June 16th through 20th of 2020 and would like to see if this campaign spurred on new visits.

In this exercise, we will look at one of the simplest downsampling techniques: converting a DATETIME2 or DATETIME data type to a data type with just a date and no time component: the DATE type.
*/

/*
Downsample customer visit start times to the daily grain and aggregate results.
*/
SELECT
	-- Downsample to a daily grain
    -- Cast CustomerVisitStart as a date
	CAST(dsv.CustomerVisitStart AS DATE) AS Day,
	SUM(dsv.AmenityUseInMinutes) AS AmenityUseInMinutes,
	COUNT(1) AS NumberOfAttendees
FROM dbo.DaySpaVisit dsv
WHERE
	dsv.CustomerVisitStart >= '2020-06-11'
	AND dsv.CustomerVisitStart < '2020-06-23'
GROUP BY
	CAST(dsv.CustomerVisitStart AS DATE)
ORDER BY
	Day;




