/*
Accessing values from the next row
With the LEAD() function, you can access data from a subsequent row in the same query, without using the GROUP BY statement. This way, you can easily compare values from an ordered list.

This is the syntax: LEAD(numeric_expression) OVER ([PARTITION BY column] ORDER BY column)

In this exercise, you will get familiar with comparing values from the current row with values from the following row.

You will select information about the voters from France and arrange the results by total votes, in ascending order. The purpose is to analyze how the number of votes from each voter compares to the number of votes recorded for the next person in the list.
*/


/*
Create a new column, showing the number of votes recorded for the next person in the list.
Create a new column with the difference between the current voter's total_votes and the votes of the next person.
*/
SELECT 
	first_name,
	last_name,
	total_votes AS votes,
    -- Select the number of votes of the next voter
	LEAD(total_votes) OVER (ORDER BY total_votes) AS votes_next_voter,
    -- Calculate the difference between the number of votes
	LEAD(total_votes) OVER (ORDER BY total_votes) - total_votes AS votes_diff
FROM voters
WHERE country = 'France'
ORDER BY total_votes;

