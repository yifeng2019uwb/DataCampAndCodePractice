/*
Build a stream of events
In the prior exercise, we broke out day spa data into a stream of entrances and exits. Unpivoting the data allows us to move to the next step, which is to order the entire stream.

The results from the prior exercise are now in a temporary table called #StartStopPoints. The columns in this table are CustomerID, TimeUTC, EntryCount, and StartOrdinal. These are the only columns you will need to use in this exercise. TimeUTC represents the event time, EntryCount indicates the net change for the event (+1 or -1), and StartOrdinal appears for entrance events and gives the order of entry.
*/

/*
Fill out the appropriate window function (ROW_NUMBER()) to create a stream of check-ins and check-outs in chronological order.
Partition by the customer ID to calculate a result per user.
Order by the event time and solve ties by using the start ordinal value.

*/
-- This section focuses on entrances:  CustomerVisitStart
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


