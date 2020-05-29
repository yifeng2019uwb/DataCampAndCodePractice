/*
Looking for a pattern within a string
If you want to search for a pattern in a string, PATINDEX() is the function you are looking for. This function returns the starting position of the first occurrence of the pattern within the string.

The syntax is: PATINDEX('%pattern%', expression)

pattern	match
%	any string of zero or more characters
_	any single character
[]	any single character within the range specified in brackets
In this exercise, you are going to use the voters table to look at information about the voters whose names follow a specified pattern.
*/


/*
Write a query to select the voters whose first name contains the letters "rr".
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for first names that contain "rr" in the middle
WHERE first_name LIKE '%rr%';


/*
Write a query to select the voters whose first name starts with "C" and has "r" as the third letter.
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for first names that start with C and the 3rd letter is r
WHERE first_name LIKE 'C_r%';


/*
Select the voters whose first name contains an "a" followed by other letters, then a "w", followed by other letters.
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for first names that have an "a" followed by 0 or more letters and then have a "w"
WHERE first_name LIKE '%a%w%';


/*
Write a query to select the voters whose first name contains one of these letters: "x", "w" or "q".
*/
SELECT 
	first_name,
	last_name,
	email 
FROM voters
-- Look for first names that contain one of the letters: "x", "w", "q"
WHERE PATINDEX('%[xwq]%',first_name) > 0;

