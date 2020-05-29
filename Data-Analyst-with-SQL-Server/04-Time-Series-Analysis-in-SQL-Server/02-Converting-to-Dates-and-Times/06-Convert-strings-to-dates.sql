/*
Convert strings to dates
The CONVERT() function behaves similarly to CAST(). When translating strings to dates, the two functions do exactly the same work under the covers. Although we used all three parameters for CONVERT() during a prior exercise in Chapter 1, we will only need two parameters here: the data type and input expression.

In this exercise, we will once again look at a table called dbo.Dates. This time around, we will get dates in from our German office. In order to handle German dates, we will need to use SET LANGUAGE to change the language in our current session to German. This affects date and time formats and system messages.

Try querying the dbo.Dates table first to see how things differ from the prior exercise.
*/

/*
Use the CONVERT() function to translate DateText into a date data type.
Then use the CONVERT() function to translate DateText into a DATETIME2(7) data type.

*/
SET LANGUAGE 'GERMAN'

SELECT
	d.DateText AS String,
	-- Convert to DATE
	CONVERT(DATE, d.DateText) AS StringAsDate,
	-- Convert to DATETIME2(7)
	CONVERT(DATETIME2(7), d.DateText) AS StringAsDateTime2
FROM dbo.Dates d;