/*
Creating a date from parts
While most functions you worked with so far extract parts from a date, DATEFROMPARTS() does exactly the opposite: it creates a date from three numbers, representing the year, month and the day.

The syntax is: DATEFROMPARTS(year, month, day)

You can also use expressions that return numeric values as parameters for this function, like this: DATEFROMPARTS(YEAR(date_expression), MONTH(date_expression), 2)

In this exercise, you will select information from the voters table, including the year and the month of the first_vote_date. Then, you will create a new date column representing the first day in the month of the first vote.
*/


/*
Select the year of the first vote.
Select the month of the first vote date.
Create a date as the start of the month of the first vote.
*/
SELECT 
	first_name,
	last_name,
    -- Select the year of the first vote
   	YEAR(first_vote_date) AS first_vote_year, 
    -- Select the month of the first vote
	MONTH(first_vote_date) AS first_vote_month,
    -- Create a date as the start of the month of the first vote
	DATEFROMPARTS(YEAR(first_vote_date), MONTH(first_vote_date), 1) AS first_vote_starting_month
FROM voters;