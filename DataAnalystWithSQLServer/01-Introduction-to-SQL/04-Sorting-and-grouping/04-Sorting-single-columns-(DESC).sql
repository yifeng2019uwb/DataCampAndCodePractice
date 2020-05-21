/*
Sorting single columns (DESC)
To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:

SELECT name
FROM people
ORDER BY name DESC;
Now practice using ORDER BY with DESC to sort single columns in descending order!

*/

/*
Get the title of films released in 2000 or 2012, in the order they were released.
*/
SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC;


/*
Get the title for every film, in reverse order.
*/
SELECT title
FROM films
ORDER BY title DESC;

/*
Get the title and duration for every film, in order of longest duration to shortest.
*/
SELECT title, duration
FROM films
ORDER BY duration DESC;




