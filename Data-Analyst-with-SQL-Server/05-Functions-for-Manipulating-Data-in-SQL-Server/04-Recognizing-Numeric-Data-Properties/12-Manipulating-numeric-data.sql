/*
Manipulating numeric data
In this exercise, you are going to use some common SQL Server functions to manipulate numeric data.

You are going to use the ratings table, which stores information about each company that has been rated, their different cocoa beans and the rating per bean.

You are going to find out information like the highest, lowest, average score received by each company (using functions like MAX(), MIN(), AVG()). Then, you will use some rounding functions to present this data with fewer decimals (ROUND(), CEILING(), FLOOR()).

*/


/*
Select the number of cocoa flavors the company was rated on.
Select the lowest, highest and the average rating that each company received.
*/
SELECT 
	company, 
    -- Select the number of cocoa flavors for each company
	COUNT(*) AS flavors,
    -- Select the minimum, maximum and average rating
	MIN(rating) AS lowest_score,
	MAX(rating) AS highest_score,
	AVG(rating) AS avg_score	  
FROM ratings
GROUP BY company
ORDER BY flavors DESC;


/*
Round the average rating to 1 decimal and show it as a different column.
*/
SELECT 
	company, 
    -- Select the number of cocoa flavors for each company
	COUNT(*) AS flavors,
    -- Select the minimum, maximum and average rating
	MIN(rating) AS lowest_score,  
	MAX(rating) AS highest_score,   
	AVG(rating) AS avg_score,
    -- Round the average rating to 1 decimal
    ROUND(AVG(rating), 1) AS round_avg_score	
FROM ratings
GROUP BY company
ORDER BY flavors DESC;


/*
Calculate the average rating received by each company and perform the following approximations:
a. round-up to the next integer value
b. round-down to the previous integer value.
*/
SELECT 
	company, 
    -- Select the number of cocoa flavors for each company
	COUNT(*) AS flavors,
    -- Select the minimum, maximum and average rating
	MIN(rating) AS lowest_score,   
	MAX(rating) AS highest_score,   
	AVG(rating) AS avg_score,
    -- Round the average rating to 1 decimal
    ROUND(AVG(rating), 1) AS round_avg_score,
    -- Round up and then down the aveg. rating to the next integer 
    CEILING(AVG(rating)) AS round_up_avg_score,   
	FLOOR(AVG(rating)) AS round_down_avg_score
FROM ratings
GROUP BY company
ORDER BY flavors DESC;




