/*
Extracting parts from a date
In this exercise, you will practice extracting date parts from a date, using SQL Server built-in functions. These functions are easy to apply and you can also use them in the WHERE clause, to restrict the results returned by the query.

You will start by querying the voters table and create new columns by extracting the year, month, and day from the first_vote_date.
*/


/*
Extract the year, month and day of the first vote.
*/
SELECT 
	first_name,
	last_name,
   	-- Extract the month number of the first vote
	DATEPART(MONTH,first_vote_date) AS first_vote_month1,
	-- Extract the month name of the first vote
    DATENAME(MONTH,first_vote_date) AS first_vote_month2,
	-- Extract the weekday number of the first vote
	DATEPART(WEEKDAY,first_vote_date) AS first_vote_weekday1,
    -- Extract the weekday name of the first vote
	DATENAME(WEEKDAY,first_vote_date) AS first_vote_weekday2
FROM voters;

