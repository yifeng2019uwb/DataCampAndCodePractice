/*
Changing a date's offset
We can use the SWITCHOFFSET() function to change the time zone of a DATETIME, DATETIME2, or DATETIMEOFFSET typed date or a valid date string. SWITCHOFFSET() takes two parameters: the date or string as input and the time zone offset. It returns the time in that new time zone, so 3:00 AM Eastern Daylight Time will become 2:00 AM Central Daylight Time.

The 2016 Summer Olympics in Rio de Janeiro started at 11 PM UTC on August 8th, 2016. Starting with a string containing that date and time, we can see what time that was in other locales.
*/

/*
Fill in the appropriate function call for Brasilia, Brazil.
Fill in the appropriate function call and time zone for Chicago, Illinois. In August, Chicago is 2 hours behind Brasilia Standard Time.
Fill in the appropriate function call and time zone for New Delhi, India. India does not observe Daylight Savings Time, so in August, New Delhi is 8 1/2 hours ahead of Brasilia Standard Time.

*/
DECLARE
	@OlympicsUTC NVARCHAR(50) = N'2016-08-08 23:00:00';

SELECT
	-- Fill in the time zone for Brasilia, Brazil
	SWITCHOFFSET(@OlympicsUTC, '-03:00') AS BrasiliaTime,
	-- Fill in the time zone for Chicago, Illinois
	SWITCHOFFSET(@OlympicsUTC, '-05:00') AS ChicagoTime,
	-- Fill in the time zone for New Delhi, India
	SWITCHOFFSET(@OlympicsUTC, '+05:30') AS NewDelhiTime;