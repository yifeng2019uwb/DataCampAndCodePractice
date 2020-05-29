/*
Grouping together
In this final exercise, you will combine GROUP BY with aggregate functions such as MIN that you've seen earlier in this chapter.

To conclude this chapter, we'll return to the eurovision table from the first chapter.
*/

/*
Use MIN and MAX to retrieve the minimum and maximum values for the place and points columns respectively.

*/
-- Retrieve the minimum and maximum place values
SELECT 
  MIN(place) AS min_place, 
  MAX(place) AS max_place, 
  -- Retrieve the minimum and maximum points values
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision;


/*
Let's obtain more insight from our results by adding a GROUP BY clause. Group the results by country.
*/
-- Retrieve the minimum and maximum place values
SELECT 
  MIN(place) AS min_place, 
  MAX(place) AS max_place, 
  -- Retrieve the minimum and maximum points values
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision
  -- Group by country
GROUP BY 
  country;



/*
The previous query results did not identify the country. Let's amend the query, returning the count of entries per country and the country column. Complete the aggregate section by finding the average place for each country.
*/
-- Obtain a count for each country
SELECT 
  COUNT(country) AS country_count, 
  -- Retrieve the country column
  country, 
  -- Return the average of the Place column 
  AVG(place) AS average_place, 
  AVG(points) AS avg_points, 
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision 
GROUP BY 
  country;


/*
Finally, our results are skewed by countries who only have one entry. Apply a filter so we only return rows where the country_count is greater than 5. Then arrange by avg_place in ascending order, and avg_points in descending order.
*/
SELECT 
  country, 
  COUNT (country) AS country_count, 
  AVG (place) AS avg_place, 
  AVG (points) AS avg_points, 
  MIN (points) AS min_points, 
  MAX (points) AS max_points 
FROM 
  eurovision 
GROUP BY 
  country 
  -- The country column should only contain those with a count greater than 5
HAVING 
  COUNT(country) > 5 
  -- Arrange columns in the correct order
ORDER BY 
  avg_place, 
  avg_points DESC;
  


