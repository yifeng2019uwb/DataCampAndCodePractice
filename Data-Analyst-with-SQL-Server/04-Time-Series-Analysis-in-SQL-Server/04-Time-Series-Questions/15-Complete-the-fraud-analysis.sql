/*
Complete the fraud analysis
So far, we have broken out day spa data into a stream of entrances and exits and ordered this stream chronologically. This stream contains two critical fields, StartOrdinal and StartOrEndOrdinal. StartOrdinal is the chronological ordering of all entrances. StartOrEndOrdinal contains all entrances and exits in order. Armed with these two pieces of information, we can find the maximum number of concurrent visits.

The results from the prior exercise are now in a temporary table called #StartStopOrder.

*/

/*

Fill out the HAVING clause to determine cases with more than 2 concurrent visitors.
Fill out the ORDER BY clause to show management the worst offenders: those with the highest values for MaxConcurrentCustomerVisits.
*/

SELECT s.*,
    -- Build a stream of all check-in and check-out events
	ROW_NUMBER() OVER (
      -- Break this out by customer ID
      PARTITION BY s.CustomerID
      -- Order by event time and then the start ordinal
      -- value (in case of exact time matches)
      ORDER BY s.TimeUTC, s.StartOrdinal
    ) AS StartOrEndOrdinal
FROM #StartStopPoints s;


