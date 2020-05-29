/*
Working with the correct data types
It’s now time to practice your understanding of various data types in SQL Server and how to convert them from one type to another. In this exercise, you will query the voters table. Remember that this table holds information about the people who provided ratings for the different chocolate flavors.

You are going to write a query that returns information (first name, last name, gender, country, number of times they voted) about the female voters from Belgium, who voted more than 20 times.

You will work with columns of different data types and perform both implicit and explicit conversions between different types of data (using CAST() and CONVERT() functions).

It sounds like a big query, but we will take it step-by-step and you will see the results in no time!
*/


/*
Restrict the query to retrieve only the female voters who voted more than 20 times.
*/
SELECT 
	first_name,
	last_name,
	gender,
	country
FROM voters
WHERE country = 'Belgium'
	-- Select only the female voters
	AND gender = 'F'
    -- Select only people who voted more than 20 times   
    AND total_votes > 20;



/*
Now that we have the data set prepared, let’s make it more user-friendly. Perform an explicit conversion from datetime to varchar(10), to show the dates as yy/mm/dd.
*/
SELECT 
	first_name,
    last_name,
	-- Convert birthdate to varchar(10) and show it as yy/mm/dd. This format corresponds to value 11 of the "style" parameter.
	CONVERT(varchar(10), birthdate, 11) AS birthdate,
    gender,
    country
FROM voters
WHERE country = 'Belgium' 
    -- Select only the female voters
	AND gender = 'F'
    -- Select only people who voted more than 20 times  
    AND total_votes > 20;



/*
Let’s now create a comments column that will show the number of votes performed by each person, in the following form: “Voted "x" times.”

*/
SELECT
	first_name,
    last_name,
	-- Convert birthdate to varchar(10) to show it as yy/mm/dd
	CONVERT(varchar(10), birthdate, 11) AS birthdate,
    gender,
    country,
    -- Convert the total_votes number to nvarchar
    'Voted ' + CAST(total_votes AS nvarchar) + ' times.' AS comments
FROM voters
WHERE country = 'Belgium'
    -- Select only the female voters
	AND gender = 'F'
    -- Select only people who voted more than 20 times
    AND total_votes > 20;

    





