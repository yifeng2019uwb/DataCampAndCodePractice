/*
Create the alphabet recursively
The task of this exercise is to create the alphabet by using a recursive CTE.

To solve this task, you need to know that you can represent the letters from A to Z by a series of numbers from 65 to 90. Accordingly, A is represented by 65 and C by 67. The function char(number) can be used to convert a number its corresponding letter.

*/

/*
Initialize number_of_letter to the number representing the letter A.
Increase the value of number_of_letter by 1 in each step and set the limit to 90, the value of Z.
Select the recursive member from the defined CTE.
*/
WITH alphabet AS (
	SELECT 
  		-- Initialize letter to A
    	65 AS number_of_letter
	-- Statement to combine the anchor and the recursive query
  	UNION ALL
	SELECT 
  		-- Add 1 each iteration
	    number_of_letter + 1
  	-- Select from the defined CTE alphabet
	FROM alphabet
  	-- Limit the alphabet to A-Z
  	WHERE number_of_letter < 90)
    
SELECT char(number_of_letter)
FROM alphabet;

