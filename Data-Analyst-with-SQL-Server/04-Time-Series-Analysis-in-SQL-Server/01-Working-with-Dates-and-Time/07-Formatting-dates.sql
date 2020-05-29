/*
Formatting dates with CAST() and CONVERT()
We can use the CAST() function to translate data between various data types, including between date/time types and string types. The CONVERT() function takes three parameters: a data type, an input value, and an optional format code.

In this exercise, we will see how we can use the CAST() and CONVERT() functions to translate dates to strings for formatting by looking at the (late) night the Chicago Cubs won the World Series in the US in 2016. In the process, we will see one difference between the DATETIME and the DATETIME2 data types for CAST() and the added flexibility of CONVERT().
*/

/*
Fill in the first set of missing function calls using one of CAST() or CONVERT() as appropriate.
Create DateStringForm as a date in string form using two separate calls using one of CAST() or CONVERT() as appropriate.
Fill in the second set of missing function calls and missing styles using one of CAST() or CONVERT() as appropriate.
*/
DECLARE
	@CubsWinWorldSeries DATETIME2(3) = '2016-11-03 00:30:29.245',
	@OlderDateType DATETIME = '2016-11-03 00:30:29.245';

SELECT
	-- Fill in the missing function calls
	CAST(@CubsWinWorldSeries AS DATE) AS DateForm,
	CAST(@CubsWinWorldSeries AS NVARCHAR(30)) AS StringForm,
	CAST(@OlderDateType AS DATE) AS OlderDateForm,
	CAST(@OlderDateType AS NVARCHAR(30)) AS OlderStringForm,
	-- Turn this first into a date and then into a string
	CAST(CAST(@CubsWinWorldSeries AS DATE) AS NVARCHAR(30)) AS DateStringForm,
	-- Note the different function parameters
	-- Fill in the function call and missing styles
	CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 0) AS DefaultForm,
    -- This is a two-digit year code
    CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 3) AS UK_dmy,
	CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 1) AS US_mdy,
    -- All of these are four-digit year codes
    CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 112) AS ISO_yyyymmdd,
	CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 126) AS ISO8601,
	CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 104) AS DE_dmyyyy,
	CONVERT(NVARCHAR(30), @CubsWinWorldSeries, 111) AS JP_yyyymd;
	
	
	
	