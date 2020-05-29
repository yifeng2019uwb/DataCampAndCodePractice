/*
Using the beginning or end of a string
Sometimes you may need to take only certain parts of a string. If you know that those parts can be found at the beginning or the end of the string, remember that there are built-in functions that can help you with this task.

You will use these functions in this exercise. The purpose is to create an alias for each voter from the voters table, as a combination of the first 3 letters from the first name, the last 3 letters from the last name, and the last 2 digits from the birthday.
*/


/*
Select information from the voters table, including a new column called part1, containing only the first 3 letters from the first name.
*/
SELECT 
	first_name,
	last_name,
	country,
    -- Select only the first 3 characters from the first name
	LEFT(first_name, 3) AS part1
FROM voters;

/*
Add a new column to the previous query, containing the last 3 letters from the last name.
*/
SELECT 
	first_name,
	last_name,
	country,
    -- Select only the first 3 characters from the first name
	LEFT(first_name, 3) AS part1,
    -- Select only the last 3 characters from the last name
    RIGHT(last_name, 3) AS part2
FROM voters;


/*
Add another column to the previous query, containing the last 2 digits from the birth date.
*/
SELECT 
	first_name,
	last_name,
	country,
    -- Select only the first 3 characters from the first name
	LEFT(first_name, 3) AS part1,
    -- Select only the last 3 characters from the last name
    RIGHT(last_name, 3) AS part2,
    -- Select only the last 2 digits from the birth date
    RIGHT(birthdate, 2) AS part3
FROM voters;


/*
Create an alias for each voter with the following parts: the first 3 letters from the first name concatenated with the last 3 letters from the last name, followed by the _ character and the last 2 digits from the birth date.
*/
SELECT 
	first_name,
	last_name,
	country,
    -- Select only the first 3 characters from the first name
	LEFT(first_name, 3) AS part1,
    -- Select only the last 3 characters from the last name
    RIGHT(last_name, 3) AS part2,
    -- Select only the last 2 digits from the birth date
    RIGHT(birthdate, 2) AS part3,
    -- Create the alias for each voter
    LEFT(first_name, 3) + RIGHT(last_name, 3) + '_' + RIGHT(birthdate, 2)  
FROM voters;


