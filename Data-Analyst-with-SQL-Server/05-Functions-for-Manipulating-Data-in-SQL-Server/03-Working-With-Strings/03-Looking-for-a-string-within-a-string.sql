/*
Looking for a string within a string
If you need to check whether an expression exists within a string, you can use the CHARINDEX() function. This function returns the position of the expression you are searching within the string.

The syntax is: CHARINDEX(expression_to_find, expression_to_search [, start_location])

In this exercise, you are going to use the voters table to search for information about the voters whose names meet several conditions.
*/


/*
Restrict the query to select only the voters whose first name contains the expression "dan".
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for the "dan" expression in the first_name
WHERE CHARINDEX('dan', first_name ) > 0;



/*
Restrict the query to select the voters with "dan" in the first_name and "z" in the last_name.
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for the "dan" expression in the first_name
WHERE CHARINDEX('dan', first_name) > 0 
    -- Look for last_names that contain the letter "z"
	AND CHARINDEX('z', last_name) > 0;

/*
Restrict the query to select the voters with "dan" in the first_name and DO NOT have the letter "z" in the last_name.
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for the "dan" expression in the first_name
WHERE CHARINDEX('dan', first_name) > 0 
    -- Look for last_names that do not contain the letter "z"
	AND CHARINDEX('z', last_name) <= 0;

