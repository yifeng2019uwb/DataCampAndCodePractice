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
	-- Extract the year of the first vote
	DATEPART(YEAR, first_vote_date)  AS first_vote_year,
    -- Extract the month of the first vote
	DATEPART(MONTH, first_vote_date) AS first_vote_month,
    -- Extract the day of the first vote
	DATEPART(DAY, first_vote_date)   AS first_vote_day
FROM voters;


/*
Restrict the query to show only the voters who started to vote after 2015.
*/
SELECT 
	first_name,
	last_name,
   	-- Extract the year of the first vote
	YEAR(first_vote_date)  AS first_vote_year,
    -- Extract the month of the first vote
	MONTH(first_vote_date) AS first_vote_month,
    -- Extract the day of the first vote
	DAY(first_vote_date)   AS first_vote_day
FROM voters
-- The year of the first vote should be greater than 2015
WHERE YEAR(first_vote_date) > 2015;


/*
Restrict the query to show only the voters did not vote on the first day of the month.
*/
SELECT 
	first_name,
	last_name,
   	-- Extract the year of the first vote
	YEAR(first_vote_date)  AS first_vote_year,
    -- Extract the month of the first vote
	MONTH(first_vote_date) AS first_vote_month,
    -- Extract the day of the first vote
	DAY(first_vote_date)   AS first_vote_day
FROM voters
-- The year of the first vote should be greater than 2015
WHERE YEAR(first_vote_date) > 2015
-- The day should not be the first day of the month
  AND DAY(first_vote_date) <> 1;
  