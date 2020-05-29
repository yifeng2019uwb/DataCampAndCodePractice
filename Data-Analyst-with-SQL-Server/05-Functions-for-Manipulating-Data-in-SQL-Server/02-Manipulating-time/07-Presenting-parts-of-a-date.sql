/*
Presenting parts of a date
DATENAME() and DATEPART() are two similar functions. The difference between them is that while the former understandably shows some date parts, as strings of characters, the latter returns only integer values.

In this exercise, you will use both of these functions to select the month and weekday of the first_vote_date in different forms.
*/


/*
Extract the month number of the first vote.
Extract the month name of the first vote.
Extract the weekday number of the first vote.
Extract the weekday name of the first vote.
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
