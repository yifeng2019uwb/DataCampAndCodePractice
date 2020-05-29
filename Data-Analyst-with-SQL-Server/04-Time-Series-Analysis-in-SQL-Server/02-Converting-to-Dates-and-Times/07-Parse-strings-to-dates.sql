/*
Parse strings to dates
Changing our language for data loading is not always feasible. Instead of using the SET LANGUAGE syntax, we can instead use the PARSE() function to parse a string as a date type using a specific locale.

We will once again use the dbo.Dates table, this time parsing all of the dates as German using the de-de locale.
*/

/*
Parse DateText as dates using the German locale (de-de).
Then, parse DateText as the data type DATETIME2(7), still using the German locale.

*/

SELECT
	d.DateText AS String,
	-- Parse as DATE using German
	PARSE(d.DateText AS DATE USING 'de-de') AS StringAsDate,
	-- Parse as DATETIME2(7) using German
	PARSE(d.DateText AS DATETIME2(7) USING 'de-de') AS StringAsDateTime2
FROM dbo.Dates d;
