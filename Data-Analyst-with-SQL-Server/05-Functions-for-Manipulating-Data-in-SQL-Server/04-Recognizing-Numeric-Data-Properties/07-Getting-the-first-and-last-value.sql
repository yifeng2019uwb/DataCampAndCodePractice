/*
Getting the first and last value
The analytical functions that return the first or last value from an ordered list prove to be very helpful in queries. In this exercise, you will get familiar with them. The syntax is:

FIRST_VALUE(numeric_expression) OVER ([PARTITION BY column] ORDER BY column ROW_or_RANGE frame)

LAST_VALUE(numeric_expression) OVER ([PARTITION BY column] ORDER BY column ROW_or_RANGE frame)

You will write a query to retrieve all the voters from Spain and the USA. Then, you will add in your query some commands for retrieving the birth date of the youngest and the oldest voter from each country. You want to see these values on each row, to be able to compare them with the birth date of each voter.
*/


/*
Retrieve the birth date of the oldest voter from each country.
Retrieve the birth date of the youngest voter from each country.
*/
SELECT 
	first_name + ' ' + last_name AS name,
	country,
	birthdate,
	-- Retrieve the birthdate of the oldest voter per country
	FIRST_VALUE(birthdate) 
	OVER (PARTITION BY country ORDER BY birthdate) AS oldest_voter,
	-- Retrieve the birthdate of the youngest voter per country
	LAST_VALUE(birthdate) 
		OVER (PARTITION BY country ORDER BY birthdate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
				) AS youngest_voter
FROM voters
WHERE country IN ('Spain', 'USA');
