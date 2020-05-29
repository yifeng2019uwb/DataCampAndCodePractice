/*
Calculate the factorial of 5
A very important mathematical operation is the calculation of the factorial of a positive integer n. In general, the factorial operation is used in many areas of mathematics, notably in combinatorics, algebra, and mathematical analysis.

The factorial of n is defined by the product of all positive integers less than or equal to n. For example, the factorial of 3 (denoted by n!) is defined as:

3! = 1 x 2 x 3 = 6

To calculate the factorial of n, many different solutions exist. In this exercise, you will determine the factorial of 5 iteratively with SQL.

Remember the syntax of a WHILE loop in SQL:

WHILE condition
BEGIN
   {...statements...}
END;
More information on WHILE can be found in the documentation.


*/

/*
Set the @target factorial, which will also serve as the termination condition, to 5.
Initialize the @factorial result.
Calculate the @factorial number by taking the product of the factorial result so far and the current iteration.
Reduce the termination condition by 1 at the end of the iteration.
*/

-- Define the target factorial number
DECLARE @target float = 5
-- Initialization of the factorial result
DECLARE @factorial float = 1

WHILE @target > 0 
BEGIN
	-- Calculate the factorial number
	SET @factorial = @factorial * @target
	-- Reduce the termination condition  
	SET @target = @target - 1
END

SELECT @factorial;

