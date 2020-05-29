/*
Calculating the length of a string
It is important to know how to calculate the length of the strings stored in a database. You may need to calculate the product with the shortest name or the person with the longest email address.

Calculating the length of a string also proves to be useful in data cleansing and validation tasks. For example, if a business rule is that all product codes must have at least 6 characters, you can easily find the ones that are shorter.

In SQL Server, you can use the LEN() function for calculating the length of a string of characters.

You will use it in this exercise to calculate the location with the longest name from where cocoa beans are used (column broad_bean_origin, from the ratings table).
*/


/*
Calculate the length of each broad_bean_origin.
Order the results from the longest to shortest.

*/
SELECT TOP 10 
	company, 
	broad_bean_origin,
	-- Calculate the length of the broad_bean_origin column
	LEN(broad_bean_origin) AS length
FROM ratings
--Order the results based on the new column, descending
ORDER BY LEN(broad_bean_origin) DESC;



