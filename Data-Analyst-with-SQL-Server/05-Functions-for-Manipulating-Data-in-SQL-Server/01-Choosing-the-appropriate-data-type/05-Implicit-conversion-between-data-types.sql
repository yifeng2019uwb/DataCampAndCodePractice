/*
Implicit conversion between data types
This is what you need to remember about implicit conversion:

For comparing two values in SQL Server, they need to have the same data type.
If the data types are different, SQL Server implicitly converts one type to another, based on data type precedence.
The data type with the lower precedence is converted to the data type with the higher precedence.
In this exercise, you are going to test if explicit conversion works between a numeric type and a character. use information from the conversion table, where the implicit and explicit conversions between all data types are presented. You are going to try an implicit conversion between two different data types.

For this, you will use the voters table and will compare the total_votes numeric column with a character.
*/


/*
Restrict the query to show only the rows where total_votes is higher than the character string '120'.
*/
SELECT 
	first_name,
	last_name,     
	total_votes
FROM voters
WHERE total_votes > '120'



