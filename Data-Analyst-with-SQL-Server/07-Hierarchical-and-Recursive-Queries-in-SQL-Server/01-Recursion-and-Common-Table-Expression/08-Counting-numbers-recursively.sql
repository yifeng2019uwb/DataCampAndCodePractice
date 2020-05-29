/*
Counting numbers recursively
In this first exercise after the video, we will start with a very simple math function. It is the simple series from 1 to target and in our case we set the target value to 50.

This means the task is to count from 1 to 50 using a recursive query. You have to define:

the CTE with the definition of the anchor and recursive query and
set the appropriate termination condition for the recursion


*/

/*
Limit the recursion step to 50 in the recursive query.
Define the CTE with the name counting_numbers.
Initialize number in the anchor query.
Add 1 to number each recursion step.

*/

-- Define the CTE
WITH counting_numbers AS ( 
	SELECT 
  		-- Initialize number
  		1 AS number
  	UNION ALL 
  	SELECT 
  		-- Increment number by 1
  		number + 1 
  	FROM counting_numbers
	-- Set the termination condition
  	WHERE number < 50)

SELECT number
FROM counting_numbers;


