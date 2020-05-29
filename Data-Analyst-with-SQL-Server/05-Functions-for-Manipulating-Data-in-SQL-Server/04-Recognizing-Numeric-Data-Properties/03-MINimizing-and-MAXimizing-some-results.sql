/*
MINimizing and MAXimizing some results
Calculating the minimum, maximum or average value from a data set are common tasks when working with databases. You may need to calculate the maximum or minimum salary within a department or the average weight of some people going to the gym.

In this exercise, you will find out the average cocoa percentage used by each company in their chocolate bars.

You will also calculate the minimum and maximum score received by each company during the voting process.
*/


/*
Calculate the average percentage of cocoa used by each company.
*/
SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa
FROM ratings
GROUP BY company;


/*
Calculate the minimum rating received by each company.
*/
SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa,
	-- Calculate the minimum rating received by each company
	MIN(rating) AS min_rating	
FROM ratings
GROUP BY company;


/*
Calculate the maximum rating received by each company.

*/
SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa,
	-- Calculate the minimum rating received by each company
	MIN(rating) AS min_rating,
	-- Calculate the maximum rating received by each company
	MAX(rating) AS max_rating
FROM ratings
GROUP BY company;


/*
Use an aggregate function to order the results of the query by the maximum rating, in descending order.

*/
SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa,
	-- Calculate the minimum rating received by each company
	MIN(rating) AS min_rating,
	-- Calculate the maximum rating received by each company
	MAX(rating) AS max_rating
FROM ratings
GROUP BY company
-- Order the values by the maximum rating
ORDER BY max_rating DESC;



