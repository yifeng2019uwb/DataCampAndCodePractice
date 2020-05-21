/*
Sorting single columns
Now that you understand how ORDER BY works, give these exercises a go!
*/

/*
Get the names of people from the people table, sorted alphabetically.
*/
SELECT name
FROM people
ORDER BY name;

/*
Get the names of people, sorted by birth date.
*/
SELECT name
FROM people
ORDER BY birthdate;

/*
Get the birth date and name for every person, in order of when they were born.
*/
SELECT birthdate, name
FROM people
ORDER BY birthdate;




