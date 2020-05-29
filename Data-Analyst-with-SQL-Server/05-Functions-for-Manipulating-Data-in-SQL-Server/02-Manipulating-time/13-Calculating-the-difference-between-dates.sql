/*
Calculating the difference between dates
DATEDIFF() is one of the most commonly-known functions for manipulating dates. It is used for retrieving the number of time units between two dates. This function is useful for calculating, for example:

How many years have passed since a specific event.
The age of a person at a point in time.
How many minutes it takes to process an order in a restaurant.
In almost all business scenarios you can find an example for which using this function proves to be useful.

In this exercise, you will use DATEDIFF() to perform calculations with the dates stored in the voters table.
*/


/*
Calculate the number of years since a participant celebrated their 18th birthday until the first time they voted.
*/
SELECT
	first_name,
	birthdate,
	first_vote_date,
    -- Select the diff between the 18th birthday and first vote
	DATEDIFF(YEAR, DATEADD(YEAR, 18, birthdate), first_vote_date) AS adult_years_until_vote
FROM voters;



/*
How many weeks have passed since the beginning of 2019 until now?
*/
SELECT 
	-- Get the difference in weeks from 2019-01-01 until now
	DATEDIFF(WEEK, '2019-01-01', SYSDATETIME()) AS weeks_passed;


