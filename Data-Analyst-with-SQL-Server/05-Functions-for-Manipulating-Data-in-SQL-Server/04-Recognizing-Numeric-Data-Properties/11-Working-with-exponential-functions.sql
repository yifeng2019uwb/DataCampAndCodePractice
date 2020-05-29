/*
Working with exponential functions
The exponential functions are useful when you need to perform calculations in the database. For databases storing real estate information, for example, you may need to calculate areas. In this case, these functions may come in handy:

POWER(number, power): raises the number to the specified power
SQUARE(number): raises the number to the power of 2
Or, if you need to calculate the distance between two cities, whose coordinates are known, you could use this function:

SQRT(number): calculates the square root of a positive number.
In this exercise, you will play with the exponential functions and analyze the values they return.

*/


/*
Raise the number stored in the @number variable to the power from the @power variable.
Calculate the square of the @number variable (square means the power of 2).
Calculate the square root of the number stored in the @number variable.
*/
DECLARE @number DECIMAL(4, 2) = 4.5;
DECLARE @power INT = 4;

SELECT
	@number AS number,
	@power AS power,
	-- Raise the @number to the @power
	POWER(@number, @power) AS number_to_power,
	-- Calculate the square of the @number
	SQUARE(@number) num_squared,
	-- Calculate the square root of the @number
	SQRT(@number) num_square_root;

