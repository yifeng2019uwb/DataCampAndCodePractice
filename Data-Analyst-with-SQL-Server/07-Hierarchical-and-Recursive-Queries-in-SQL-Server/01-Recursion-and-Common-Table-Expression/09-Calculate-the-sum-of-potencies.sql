/*
Calculate the sum of potencies
In this exercise, you will calculate the sum of potencies recursively. This mathematical series is defined as:

result=1 for step = 1
result + step^step for step > 1
The numbers in this series are getting large very quickly and the series does not converge. The task of this exercise is to calculate the sum of potencies for step = 9.


*/

/*
Define the CTE calculate_potencies with the fields step and result.
Initialize step and result.
Add the next step to the POWER() step + 1 to result.
*/
-- Define the CTE calculate_potencies with the fields step and result
WITH calculate_potencies (step, result) AS (
    SELECT 
  		-- Initialize step and result
  		1 AS step,
  		1 AS result
    UNION ALL
    SELECT 
  		step + 1,
  		-- Add the POWER calculation to the result 
  		result + POWER(step + 1, step + 1)
    FROM calculate_potencies
    WHERE step < 9)
    
SELECT 
	step, 
    result
FROM calculate_potencies;


