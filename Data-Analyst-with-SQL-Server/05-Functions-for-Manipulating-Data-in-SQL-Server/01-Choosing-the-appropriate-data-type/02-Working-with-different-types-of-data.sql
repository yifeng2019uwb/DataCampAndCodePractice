/*
Working with different types of data
The examples in this course are based on a data set about chocolate ratings (one of the most commonly consumed candies in the world).

This data set contains

The ratings table: information about chocolate bars: the origin of the beans, percentage of cocoa and the rating of each bar.
The voters table: details about the people who participate in the voting process. It contains personal information of a voter: first and last name, email address, gender, country, the first time they voted and the total number of votes.
In this exercise, you will take a look at different types of data.
*/


/*
Select information from the ratings table for the Belgian companies that received a rating higher than 3.5.
*/
SELECT 
	company, 
	company_location, 
	bean_origin, 
	cocoa_percent, 
	rating
FROM ratings
-- Location should be Belgium and the rating should exceed 3.5
WHERE company_location = 'Belgium'
	AND rating > 3.5;


/*
Query the voters table where birthdate is greater than '1990-01-01' and the total_votes is between 100 and 200.

*/
SELECT 
	first_name,
	last_name,
	birthdate,
	gender,
	email,
	country,
	total_votes
FROM voters
-- Birthdate > 1990-01-01, total_votes > 100 but < 200
WHERE Birthdate > '1990-01-01'
  AND total_votes > 100
  AND total_votes < 200;
  


