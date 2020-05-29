/*
Correctly applying different date functions
It's time to combine your knowledge on date functions!

In this exercise, you are going to extract information about each voter and the first time they voted. In the voters table, the date of the first vote is stored in the first_vote_date column.

You will use several date functions, like: DATENAME(), DATEDIFF(), YEAR(), GETDATE().

*/


/*
Extract the weekday from the first_vote_date.

*/
SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	datename(weekday, first_vote_date) AS first_vote_weekday
FROM voters;



/*
Find out the year when each person voted for the first time.
*/
SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	DATENAME(weekday, first_vote_date) AS first_vote_weekday,
	-- Find out the year of the first vote
	YEAR(first_vote_date) AS first_vote_year	
FROM voters;


/*
Calculate the age of each participant when they first joined the voting contest.
*/
SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	DATENAME(weekday, first_vote_date) AS first_vote_weekday,
	-- Find out the year of the first vote
	YEAR(first_vote_date) AS first_vote_year,
	-- Find out the age of each participant when they joined the contest
	DATEDIFF(YEAR, birthdate, first_vote_date) AS age_at_first_vote	
FROM voters;


/*
Calculate the current age of each participant. Remember that you can use functions as parameters for other functions.
*/
SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	DATENAME(weekday, first_vote_date) AS first_vote_weekday,
	-- Find out the year of the first vote
	YEAR(first_vote_date) AS first_vote_year,
	-- Discover the participants' age when they joined the contest
	DATEDIFF(YEAR, birthdate, first_vote_date) AS age_at_first_vote,	
	-- Calculate the current age of each voter
	DATEDIFF(YEAR, birthdate, GETDATE()) AS current_age
FROM voters;






