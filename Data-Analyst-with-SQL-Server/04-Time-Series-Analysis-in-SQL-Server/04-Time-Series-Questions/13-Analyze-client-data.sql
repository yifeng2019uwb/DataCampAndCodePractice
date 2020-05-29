/*
Analyze client data for potential fraud
In this final set of exercises, we will analyze day spa data to look for potential fraud. Our company gives each customer one pass for personal use and a single guest pass. We have check-in and check-out data for each client and guest passes tie back to the base customer ID. This means that there might be overlap when a client and guest both check in together. We want to see if there are at least three overlapping entries for a single client, as that would be a violation of our business rule.

The key to thinking about overlapping entries is to unpivot our data and think about the stream of entries and exits. We will do that first.

/*
Split out start events and end events.

Fill in the customer's visit start date (dsv.CustomerVisitStart) as TimeUTC in the "entrances" part of the query.
Fill in the window function that we alias as StartStopPoints to give us the stream of check-ins for each customer, ordered by their visit start date.
Fill in the customer's visit end date (dsv.CustomerVisitEnd) as TimeUTC in the "departures" part of the query.

*/
-- This section focuses on entrances:  CustomerVisitStart
SELECT
	dsv.CustomerID,
	dsv.CustomerVisitStart AS TimeUTC,
	1 AS EntryCount,
    -- We want to know each customer's entrance stream
    -- Get a unique, ascending row number
	ROW_NUMBER() OVER (
      -- Break this out by customer ID
      PARTITION BY dsv.CustomerID
      -- Ordered by the customer visit start date
      ORDER BY dsv.CustomerVisitStart
    ) AS StartOrdinal
FROM dbo.DaySpaVisit dsv
UNION ALL
-- This section focuses on departures:  CustomerVisitEnd
SELECT
	dsv.CustomerID,
	dsv.CustomerVisitEnd AS TimeUTC,
	-1 AS EntryCount,
	NULL AS StartOrdinal
FROM dbo.DaySpaVisit dsv

