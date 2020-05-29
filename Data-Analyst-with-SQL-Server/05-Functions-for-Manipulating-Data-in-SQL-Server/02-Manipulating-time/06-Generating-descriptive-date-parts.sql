/*
Generating descriptive date parts
DATENAME() is an interesting and easy to use function. When you create reports, for example, you may want to show parts of a date in a more understandable manner (i.e. January instead of 1). This is when the DATENAME() function proves its value. This function will return a string value with a description of the date part you are interested in.

In this exercise, you will become familiar with DATENAME(), by using it to retrieve different date parts. You will work with the first_vote_date column from the voters table.

*/


/*
Select information from the voters table, including the name of the month when they first voted.
*/
SELECT 
	first_name,
	last_name,
	first_vote_date,
    -- Select the name of the month of the first vote
	DATENAME(MONTH, first_vote_Date) AS first_vote_month
FROM voters;


/*
Select information from the voters table, including the day of the year when they first voted.
*/
SELECT 
	first_name,
	last_name,
	first_vote_date,
    -- Select the number of the day within the year
	DATENAME(DAYOFYEAR, first_vote_date) AS first_vote_dayofyear
FROM voters;

/*
Select information from the voters table, including the day of the week when they first voted.
*/
SELECT 
	first_name,
	last_name,
	first_vote_date,
    -- Select day of the week from the first vote date
	DATENAME(weekday, first_vote_date) AS first_vote_dayofweek
FROM voters;
