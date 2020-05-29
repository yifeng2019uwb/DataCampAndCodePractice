/*
Introduction to recursion

What is recursion?
	Recurion is the use of a procedure, subroutine, function, or algorithm that calls itself one or more times until a specified condition is met


Real-world example for recursion
Family Tree - Find all fathers until the 5th generations
	. Reduce the problem to a smaller problem of the same type
		1. Whole problem: Find all generations
		2. Small problem" Find the father, find the father of the father,
	. Limit the number of steps



Facts about recursion
Advantage:
	. Solve problems in a recursive way
	. Easy to read and follow
	. Recursion could be limited by the termination condition is
Disadvantage:
	. Slow execution time


Simple recursion example - Sum of numbers

	. Recursion with SQL: Common Table Expression -CTE

	WITH calculate_SumOfNumbers AS 
	(
	-- Initial Query
	SELECT 1 AS iteration, 1 AS SumOfNumbers
	UNION ALL
	-- Recursion part
	SELECT iteration + 1, SumOfNumber + (iteration + 1)
	FROM calculate_SumOfNumbers 
	WHERE iteration < 6

	)

	SELECT SumOfNumbers
	FROM calculate_SumOfNumbers


*/





