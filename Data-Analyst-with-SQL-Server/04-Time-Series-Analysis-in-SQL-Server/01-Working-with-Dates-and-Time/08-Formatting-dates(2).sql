/*
Formatting dates with FORMAT()
The FORMAT() function allows for additional flexibility in building dates. It takes in three parameters: the input value, the input format, and an optional culture (such as en-US for US English or zh-cn for Simplified Chinese).

In the following exercises, we will investigate three separate methods for formatting dates using the FORMAT() function against the day that Python 3 became generally available: December 3rd, 2008.
*/

/*
Fill in the function and use the 'd' format parameter (note that this is case sensitive!) to format as short dates. Also, fill in the culture for Japan, which in the .NET framework is jp-JP (this is not case sensitive).
*/
DECLARE
	@Python3ReleaseDate DATETIME2(3) = '2008-12-03 19:45:00.033';

SELECT
	-- Fill in the function call and format parameter
	FORMAT(@Python3ReleaseDate, 'd', 'en-US') AS US_d,
	FORMAT(@Python3ReleaseDate, 'd', 'de-DE') AS DE_d,
	-- Fill in the locale for Japan
	FORMAT(@Python3ReleaseDate, 'd', 'jp-JP') AS JP_d,
	FORMAT(@Python3ReleaseDate, 'd', 'zh-cn') AS CN_d;

/*
Use the 'D' format parameter (this is case sensitive!) to build long dates. Also, fill in the culture for Indonesia, which in the .NET framework is id-ID.
*/
DECLARE
	@Python3ReleaseDate DATETIME2(3) = '2008-12-03 19:45:00.033';

SELECT
	-- Fill in the format parameter
	FORMAT(@Python3ReleaseDate, 'D', 'en-US') AS US_D,
	FORMAT(@Python3ReleaseDate, 'D', 'de-DE') AS DE_D,
	-- Fill in the locale for Indonesia
	FORMAT(@Python3ReleaseDate, 'D', 'id-ID') AS ID_D,
	FORMAT(@Python3ReleaseDate, 'D', 'zh-cn') AS CN_D;

/*
Fill in the custom format strings needed to generate the results in preceding comments. Use date parts such as yyyy, MM, MMM, and dd. Capitalization is important for the FORMAT() function! See the full list at https://bit.ly/30SGA5a.
*/
DECLARE
	@Python3ReleaseDate DATETIME2(3) = '2008-12-03 19:45:00.033';
    
SELECT
	-- 20081203
	FORMAT(@Python3ReleaseDate, 'yyyyMMdd') AS F1,
	-- 2008-12-03
	FORMAT(@Python3ReleaseDate, 'yyyy-MM-dd') AS F2,
	-- Dec 03+2008 (the + is just a "+" character)
	FORMAT(@Python3ReleaseDate, 'MMM dd+yyyy') AS F3,
	-- 12 08 03 (month, two-digit year, day)
	FORMAT(@Python3ReleaseDate, 'MM yy dd') AS F4,
	-- 03 Dec 07:45 2008.00
    -- (day, short month name, hour, minute, year, ".", second)
	FORMAT(@Python3ReleaseDate, 'dd MMM HH:mm yyyy.ss') AS F5;
	
