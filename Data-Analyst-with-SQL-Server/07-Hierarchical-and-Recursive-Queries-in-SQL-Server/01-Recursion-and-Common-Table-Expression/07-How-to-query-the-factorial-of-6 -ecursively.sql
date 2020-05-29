/*
How to query the factorial of 6 recursively
In the last exercise, you queried the factorial 5! with an iterative solution. Now, you will calculate 6! recursively. We reduce the problem into smaller problems of the same type to define the factorial n! recursively. For this the following definition can be used:

0! = 1 for step = 0
(n+1)! = n! * (step+1) for step > 0
With this simple definition you can calculate the factorial of every number. In this exercise, n! is represented by factorial.

You are going to leverage the definition above with the help of a recursive CTE.


*/

/*
Initialize the fields factorial and step to 1.
Calculate the recursive part with factorial * (step + 1).
Stop the recursion process when the current iteration value is smaller than the target factorial number.
*/
WITH calculate_factorial AS (
	SELECT 
		-- Initialize step and the factorial number      
      	1 AS step,
        1 AS factorial
	UNION ALL
	SELECT 
	 	step + 1,
		-- Calculate the recursive part by n!*(n+1)
	    factorial * (step + 1)
	FROM calculate_factorial        
	-- Stop the recursion reaching the wanted factorial number
	WHERE step < 6)
    
SELECT factorial 
FROM calculate_factorial;


