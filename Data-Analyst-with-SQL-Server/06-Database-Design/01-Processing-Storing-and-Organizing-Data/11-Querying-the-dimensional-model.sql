/*
Querying the dimensional model
Here it is! The schema reorganized using the dimensional model: 

route_dim						runs_fact				
route_id 				--> 	route_id 				week_dim
park_name, city_name, 			week_id 		--> 	week_id
distance_km, route_name			duration_mins			week, month, year


Let's try to run a query based on this schema. How about we try to find the number of minutes we ran in July, 2019? We'll break this up in two steps. First, we'll get the total number of minutes recorded in the database. Second, we'll narrow down that query to week_id's from July, 2019.
*/


/*
Calculate the sum of the duration_mins column.
*/
SELECT 
	-- Select the sum of the duration of all runs
	SUM(duration_mins)
FROM 
    runs_fact;

/*
Join week_dim and runs_fact.
Get all the week_id's from July, 2019.
*/
SELECT 
	-- Get the total duration of all runs
	SUM(duration_mins)
FROM 
	runs_fact
-- Get all the week_id's that are from July, 2019
INNER JOIN week_dim ON runs_fact.week_id = week_dim.week_id
WHERE week_dim.month = 'July' and week_dim.year = '2019';










