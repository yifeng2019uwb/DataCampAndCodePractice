/*
Learning how to count and add
In this exercise, you will get familiar with the function used for counting rows and the one that sums up values.

You will select information from the voters table and will calculate the number of female and male voters and the total number of votes for these groups.

Remember, for applying aggregate functions on groups of data, you need to use the GROUP BY statement.

*/


/*
Count the number of voters for each group.
Calculate the total number of votes per group.
*/
SELECT 
	gender, 
	-- Count the number of voters for each group
	COUNT(*) AS voters,
	-- Calculate the total number of votes per group
	SUM(total_votes) AS total_votes
FROM voters
GROUP BY gender;

