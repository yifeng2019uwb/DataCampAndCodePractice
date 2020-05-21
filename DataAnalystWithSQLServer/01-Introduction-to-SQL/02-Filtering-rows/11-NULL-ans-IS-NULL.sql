/*
NULL and IS NULL
Now that you know what NULL is and what it's used for, it's time for some practice!


*/


/*
Get the names of people who are still alive, i.e. whose death date is missing.
*/
SELECT name
FROM people
WHERE deathdate IS NULL;


/*
Get the title of every film which doesn't have a budget associated with it.
*/
SELECT title
FROM films
WHERE budget IS NULL;


/*
Get the number of films which don't have a language associated with them.
*/
SELECT COUNT(*)
FROM films
WHERE language IS NULL;



