/*
Convert imported data to dates with time zones
Now that we have seen the three type-safe conversion functions, we can begin to apply them against real data sets. In this scenario, we will parse data from the dbo.ImportedTime table. We used a different application to load data from this table and looked at it in a prior exercise. This time, we will retrieve data for all rows, not just the ones the importing application marked as valid.
*/

/*
Fill in the missing TRY_XXX() function name inside the EventDates common table expression.
Convert the EventDateOffset column to a string and then a localized date and time. Call these outputs EventDateOffsetString and EventDateLocal, respectively.
Convert the EventDateOffset event dates to 'UTC'. Call this output EventDateUTC.
Convert the EventDateOffset event dates to 'US Eastern Standard Time' using AT TIME ZONE. Call this output EventDateUSEast.
*/
WITH EventDates AS
(
    SELECT
        -- Fill in the missing try-conversion function
        TRY_CONVERT(DATETIME2(3), it.EventDate) AT TIME ZONE it.TimeZone AS EventDateOffset,
        it.TimeZone
    FROM dbo.ImportedTime it
        INNER JOIN sys.time_zone_info tzi
			ON it.TimeZone = tzi.name
)
SELECT
    -- Fill in the approppriate event date to convert
	CONVERT(NVARCHAR(50), ed.EventDateOffset) AS EventDateOffsetString,
	CONVERT(DATETIME2(0), ed.EventDateOffset) AS EventDateLocal,
	ed.TimeZone,
    -- Convert from a DATETIMEOFFSET to DATETIME at UTC
	CAST(ed.EventDateOffset AT TIME ZONE 'UTC' AS DATETIME2(0)) AS EventDateUTC,
    -- Convert from a DATETIMEOFFSET to DATETIME with time zone
	CAST(ed.EventDateOffset AT TIME ZONE 'US Eastern Standard Time'  AS DATETIME2(0)) AS EventDateUSEast
FROM EventDates ed;


