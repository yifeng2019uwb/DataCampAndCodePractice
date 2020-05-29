/*
CONVERTing data
Another important function similar to CAST() is CONVERT(). They are very similar in functionality, with the exception that with CONVERT() you can use a style parameter for changing the aspect of a date. Also, CONVERT() is SQL Server specific, so its performance is slightly better than CAST(). Nonetheless, it's important to know how to use both of them.

In this exercise, you are going to enhance your knowledge of the CONVERT() function.
*/


/*
Retrieve the birth date from voters, in this format: Mon dd,yyyy.
*/
SELECT 
	email,
    -- Convert birthdate to varchar show it like: "Mon dd,yyyy" 
    CONVERT(varchar, birthdate, 107) AS birthdate
FROM voters;



/*
Select the company, bean origin and the rating from the ratings table. The rating should be converted to a whole number.
*/
SELECT 
	company,
    bean_origin,
    -- Convert the rating column to an integer
    CONVERT(int, rating) AS rating
FROM ratings;


/*
Select the company, bean origin and the rating from the ratings table where the whole part of the rating equals 3.
*/
SELECT 
	company,
    bean_origin,
    rating
FROM ratings
-- Convert the rating to an integer before comparison
WHERE CONVERT(int, rating) = 3;





