/*
Replacing parts of a string
Sometimes, you need to replace characters from a string with something else.

For example, if a name was inserted in a table with an extra character, you may want to fix the mistake.

If a company was acquired and changed its name, you need to replace the old company name with the new name in all documents stored in the database.

In this exercise, you will use a built-in function that replaces a part of a string with something else. For using the function correctly, you need to supply the following parameters:

the expression
the string to be found
the replacement string.
*/


/*
Add a new column in the query in which you replace the "yahoo.com" in all email addresses with "live.com".
*/
SELECT 
	first_name,
	last_name,
	email,
	-- Replace "yahoo.com" with "live.com"
	REPLACE(email,'yahoo.com', 'live.com') AS new_email
FROM voters;


/*
Replace the character "&" from the company name with "and".
*/
SELECT 
	company AS initial_name,
    -- Replace '&' with 'and'
	REPLACE(company,'&','and') AS new_name 
FROM ratings
WHERE CHARINDEX('&', company) > 0;


/*
Remove the string "(Valrhona)" from the company name "La Maison du Chocolat (Valrhona)".
*/
SELECT 
	company AS old_company,
    -- Remove the text '(Valrhona)' from the name
	REPLACE(company,'(Valrhona)','' ) AS new_company,
	bean_type,
	broad_bean_origin
FROM ratings
WHERE company = 'La Maison du Chocolat (Valrhona)';





