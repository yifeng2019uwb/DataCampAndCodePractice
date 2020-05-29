/*
CASTing data
It happens often to need data in a certain type or format and to find that it's stored differently. For example:

Integrating data from multiple sources, having different data types, into a single one
Abstract data should be more readable (i.e. True/False instead of 1/0) Luckily, you don't need to make any changes in the data itself. You can use functions for explicitly converting to the data type you need (using CAST() and CONVERT()).
You are now going to explicitly convert data using the CAST() function. Remember the syntax:

CAST(expression AS data_type [(length)])
*/


/*
Write a query that will show a message like the following, for each voter: Carol Rai was born in 1989.
*/
SELECT 
	-- Transform the year part from the birthdate to a string
	first_name + ' ' + last_name + ' was born in ' + CAST(YEAR(birthdate) AS nvarchar) + '.' 
FROM voters;




/*
Divide the total votes by 5.5. Transform the result to an integer.
*/
SELECT 
	-- Transform to int the division of total_votes to 5.5
	CAST(total_votes/5.5 AS int) AS DividedVotes
FROM voters;


/*
Select the voters whose total number of votes starts with 5.
*/
SELECT 
	first_name,
	last_name,
	total_votes
FROM voters
-- Transform the total_votes to char of length 10
WHERE CAST(total_votes AS VARCHAR) LIKE '5%';





