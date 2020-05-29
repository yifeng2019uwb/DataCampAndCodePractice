/*
Selecting parts of the system's date and time
In this exercise, you will retrieve only parts of the system's date and time, focusing on only the date or only the time. You will use the same date and time functions, but you will use CAST() and CONVERT() to transform the results to a different data type.
*/


/*
Use two functions to query the system's local date, without timezone information. Show the dates in different formats.
*/
SELECT 
	CONVERT(VARCHAR(24), SYSDATETIME(), 107) AS HighPrecision,
	CONVERT(VARCHAR(24), GETDATE(), 102) AS LowPrecision;




/*
Use two functions to retrieve the current time, in Universal Time Coordinate.
*/
SELECT 
	CAST(SYSUTCDATETIME() AS time) AS HighPrecision,
	CAST(GETDATE() AS time) AS LowPrecision;
	
