/*
Simple selections
It's time to begin writing your own queries! In this first coding exercise, you will use SELECT statements to retrieve columns from a database table. You'll be working with the eurovision table, which contains data relating to individual country performance at the Eurovision Song Contest from 1998 to 2012.

After selecting columns, you'll also practice renaming columns, and limiting the number of rows returned.
*/

/*
SELECT the country column FROM the eurovision table.
*/
-- SELECT the country column FROM the eurovision table
SELECT country
From eurovision

/*
Amend your query to return the points column instead of the country column.
*/
-- Select the points column
SELECT 
  points 
FROM 
  eurovision;

/*
Use TOP to change the existing query so that only the first 50 rows are returned.
*/
-- Limit the number of rows returned
SELECT 
  TOP (50) points 
FROM 
  eurovision;


/*
Return a list of unique countries using DISTINCT. Give the results an alias of unique_country.

*/
-- Return unique countries and use an alias
SELECT 
  DISTINCT country AS unique_country 
FROM 
  eurovision;

