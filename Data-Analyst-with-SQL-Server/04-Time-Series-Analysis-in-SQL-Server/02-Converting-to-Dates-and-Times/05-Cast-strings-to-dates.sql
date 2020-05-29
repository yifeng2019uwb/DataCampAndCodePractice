/*
Cast strings to dates
The CAST() function allows us to turn strings into date and time data types. In this example, we will review many of the formats CAST() can handle.

Review the data in the dbo.Dates table which has been pre-loaded for you. Then use the CAST() function to convert these dates twice: once into a DATE type and once into a DATETIME2(7) type. Because one of the dates includes data down to the nanosecond, we cannot convert to a DATETIME type or any DATETIME2 type with less precision.

NOTE: the CAST() function is language- and locale-specific, meaning that for a SQL Server instance configured for US English, it will translate 08/23/2008 as 2008-08-23 but it will fail on 23/08/2008, which a SQL Server with the French Canadian locale can handle.
*/

/*
Cast the input string DateText in the dbo.Dates temp table to the DATE data type.
Cast the input string DateText in the dbo.Dates temp table to the DATETIME2(7) data type.

*/
SELECT
	d.DateText AS String,
	-- Cast as DATE
	CAST(d.DateText AS DATE) AS StringAsDate,
	-- Cast as DATETIME2(7)
	CAST(d.DateText AS DATETIME2(7)) AS StringAsDateTime2
FROM dbo.Dates d;

