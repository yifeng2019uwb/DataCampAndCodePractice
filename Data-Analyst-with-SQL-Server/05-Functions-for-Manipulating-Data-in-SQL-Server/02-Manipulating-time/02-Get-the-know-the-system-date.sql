/*
Get the know the system date and time functions
The purpose of this exercise is for you to work with the system date and time functions and see how you can use them in SQL Server. Whether you just want to discover what day it is or you are performing complex time analysis, these functions will prove to be very helpful in many situations.

In this exercise, you will familiarize yourself with the most commonly used system date and time functions. These are:

Higher Precision

SYSDATETIME()
SYSUTCDATETIME()
SYSDATETIMEOFFSET()
Lower Precision

GETDATE()
GETUTCDATE()
CURRENT_TIMESTAMP
*/


/*
Use the most common date function for retrieving the current date.
*/
SELECT 
	SYSDATETIME() AS CurrentDate;



/*
Select the current date in UTC time (Universal Time Coordinate) using two different functions.
*/
SELECT 
	SYSDATETIME() AS UTC_HighPrecision,
	GETDATE() AS UTC_LowPrecision;

/*
Select the local system's date, including the timezone information.
*/
SELECT 
	CURRENT_TIMESTAMP AS Timezone;







