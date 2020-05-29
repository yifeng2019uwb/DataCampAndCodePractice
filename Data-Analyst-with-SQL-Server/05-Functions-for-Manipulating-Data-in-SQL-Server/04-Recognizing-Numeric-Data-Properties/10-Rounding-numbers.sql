/*
Rounding numbers
Sometimes in your database development, you may need to round the results of a calculation. There are three functions you can use for this:

CEILING(expression): rounds-up to the nearest integer value
FLOOR(expression): rounds-down to the nearest integer value
ROUND(expression, length): rounds the expression to the specified length.
In this exercise, you will get familiar with the rounding functions, by applying them on a query based on the ratings table.
*/


/*
Round up the ratings to the nearest integer value.
*/
SELECT
	rating,
	-- Round-up the rating to an integer value
	CEILING(rating) AS round_up
FROM ratings


/*
Round down the ratings to the nearest integer value.
*/
SELECT
	rating,
	-- Round-up the rating to an integer value
	CEILING(rating) AS round_up,
	-- Round-down the rating to an integer value
	FLOOR(rating) AS round_down
FROM ratings;


/*
Round the ratings to a decimal number with only 1 decimal.
*/
SELECT
	rating,
	-- Round-up the rating to an integer value
	CEILING(rating) AS round_up,
	-- Round-down the rating to an integer value
	FLOOR(rating) AS round_down,
	-- Round the rating value to one decimal
	ROUND(rating, 1) AS round_onedec
FROM ratings;


/*
Round the ratings to a decimal number with 2 decimals.
*/
SELECT
	rating,
	-- Round-up the rating to an integer value
	CEILING(rating) AS round_up,
	-- Round-down the rating to an integer value
	FLOOR(rating) AS round_down,
	-- Round the rating value to one decimal
	ROUND(rating, 1) AS round_onedec,
	-- Round the rating value to two decimals
	ROUND(rating, 2) AS round_twodec
FROM ratings;



