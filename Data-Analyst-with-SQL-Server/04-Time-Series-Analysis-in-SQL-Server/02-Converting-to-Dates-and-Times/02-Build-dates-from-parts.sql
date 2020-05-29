/*
Build dates from parts
The DATEFROMPARTS() function allows us to turn a series of numbers representing date parts into a valid DATE data type. In this exercise, we will learn how to use DATEFROMPARTS() to build dates from components in a calendar table.

Although the calendar table already has dates in it, this helps us visualize circumstances in which the base table has integer date components but no date value, which might happen when importing data from flat files directly into a database.

*/

/*
Build the date and time (using DATETIME2FROMPARTS()) that Neil and Buzz became the first people to land on the moon. Note the "2" in DATETIME2FROMPARTS(), meaning we want to build a DATETIME2 rather than a DATETIME.
Build the date and time (using DATETIMEFROMPARTS()) that Neil and Buzz took off from the moon. Note that this is for a DATETIME, not a DATETIME2.
*/
SELECT
	-- Mark the date and time the lunar module touched down
    -- Use 24-hour notation for hours, so e.g., 9 PM is 21
	DATETIME2FROMPARTS(1969, 07, 20, 20, 17, 00, 000, 0) AS TheEagleHasLanded,
	-- Mark the date and time the lunar module took back off
    -- Use 24-hour notation for hours, so e.g., 9 PM is 21
	DATETIMEFROMPARTS(1969, 07, 21, 18, 54, 00, 000) AS MoonDeparture;

	