/*
Changing the default language
The language set in SQL Server can influence the way character strings are interpreted as dates. Changing the language automatically updates the date format. In this exercise, you will analyze the impact of the SET LANGUAGE command on some practical examples. You will select between the English, Croatian, and Dutch language, taking into account that they use the following formats:

Language	Date format
English	mdy
Croatian	ymd
Dutch	dmy
*/


/*
Change the language, so that '30.03.2019' is considered a valid date. Select the name of the month.
*/
DECLARE @date1 NVARCHAR(20) = '30.03.2019';

-- Set the correct language
SET LANGUAGE Dutch;
SELECT
	@date1 AS initial_date,
    -- Check that the date is valid
	ISDATE(@date1) AS is_valid,
    -- Select the name of the month
	DATENAME(MONTH, @date1) AS month_name;



/*
Change the language, so that '32/12/13' is interpreted as a valid date. Select the name of the month. Select the year.

*/
DECLARE @date1 NVARCHAR(20) = '32/12/13';

-- Set the correct language
SET LANGUAGE Croatian;
SELECT
	@date1 AS initial_date,
    -- Check that the date is valid
	ISDATE(@date1) AS is_valid,
    -- Select the name of the month
	DATENAME(MONTH,@date1) AS month_name,
	-- Extract the year from the date
	YEAR(@date1) AS year_name;



/*
Set the correct date format so that the variable @date1 is interpreted as a valid date.
*/
DECLARE @date1 NVARCHAR(20) = '10.13.2019';

-- Set the date format and check if the variable is a date
SET DATEFORMAT mdy;
SELECT ISDATE(@date1) AS result;


/*
Change the language, so that '12/18/55' is interpreted as a valid date. Select the day of week. Select the year.
*/
DECLARE @date1 NVARCHAR(20) = '12/18/55';

-- Set the correct language
SET LANGUAGE English;
SELECT
	@date1 AS initial_date,
    -- Check that the date is valid
	ISDATE(@date1) AS is_valid,
    -- Select the week day name
	DATENAME(WEEKDAY, @date1) AS week_day,
	-- Extract the year from the date
	YEAR(@date1) AS year_name;
	




