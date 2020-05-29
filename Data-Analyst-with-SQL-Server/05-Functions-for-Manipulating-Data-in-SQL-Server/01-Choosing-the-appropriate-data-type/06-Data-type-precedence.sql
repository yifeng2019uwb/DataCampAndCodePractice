/*
Data type precedence
In this exercise, you will evaluate the rating information from the ratings table and you will see what happens when a decimal value is compared to an integer. Remember: in SQL Server, data is implicitly converted behind the scenes from one type to another, in such a way that no data loss occurs.
*/


/*
Select information about all the ratings that were higher than 3.
*/
SELECT 
	bean_type,
	rating
FROM ratings
WHERE rating > 3;




