/*
Test type-safe conversion function performance
In the last two exercises, we looked at the TRY_CAST(), TRY_CONVERT(), and TRY_PARSE() functions. These functions do not all perform equally well. In this exercise, you will run a performance test against all of the dates in our calendar table.

To make it easier, we have pre-loaded dates in the dbo.Calendar table into a temp table called DateText, where there is a single NVARCHAR(50) column called DateText.

For the first three steps, the instructions will be the same: fill in missing values and keep track of the amount of time each operation takes. You will then summarize your results in step 4.
*/

/*
Fill in the correct conversion function based on its parameter signature.
Use a function to retrieve the number of milliseconds for each operation.
Fill in the blanks (in order of start time, then end time) and the date comparison function.
*/

-- Try out how fast the TRY_CAST() function is
DECLARE @StartTimeCast DATETIME2(7) = SYSUTCDATETIME();
SELECT TRY_CAST(DateText AS DATE) AS TestDate FROM #DateText;
DECLARE @EndTimeCast DATETIME2(7) = SYSUTCDATETIME();

-- Determine how much time the conversion took by
-- calculating the date difference from @StartTimeCast to @EndTimeCast
SELECT
    DATEDIFF(MILLISECOND, @StartTimeCast, @EndTimeCast) AS ExecutionTimeCast;

/*
Fill in the correct conversion function based on its parameter signature.
Use a function to retrieve the number of milliseconds for each operation.
Fill in the blanks (in order of start time, then end time) and the date comparison function.
*/

-- Try out how fast the TRY_CONVERT() function is
DECLARE @StartTimeConvert DATETIME2(7) = SYSUTCDATETIME();
SELECT TRY_CONVERT(DATE, DateText) AS TestDate FROM #DateText;
DECLARE @EndTimeConvert DATETIME2(7) = SYSUTCDATETIME();

-- Determine how much time the conversion took by
-- calculating the difference from start time to end time
-- Note that the names of the start and end time parameters have changed!
SELECT
    DATEDIFF(MILLISECOND, @StartTimeConvert, @EndTimeConvert) AS ExecutionTimeConvert;

/*
    Fill in the correct conversion function based on its parameter signature.
Use a function to retrieve the number of milliseconds for each operation.
Fill in the blanks (in order of start time, then end time) and the date comparison function.
*/
-- Try out how fast the TRY_PARSE() function is
DECLARE @StartTimeParse DATETIME2(7) = SYSUTCDATETIME();
SELECT TRY_PARSE(DateText AS DATE) AS TestDate FROM #DateText;
DECLARE @EndTimeParse DATETIME2(7) = SYSUTCDATETIME();

-- Determine how much time the conversion took by
-- calculating the difference from start time to end time
-- Note that the names of the start and end time parameters have changed again!
SELECT
    DATEDIFF(MILLISECOND, @StartTimeParse, @EndTimeParse) AS ExecutionTimeParse;

/*

*/








