/*
Deciding fact and dimension tables
Imagine that you love running and data. It's only natural that you begin collecting data on your weekly running routine. You're most concerned with tracking how long you are running each week. You also record the route and the distances of your runs. You gather this data and put it into one table called Runs with the following schema: 

 		-------------------------------
 					runs
 			duration-mins - float
 				week - int
 			month - varchar(160)
 				year - int
 			park_name - varchar(160)
 			city_name - varchar(160)
 			distance_km - float
 			route_name - varchar(160)
 		-------------------------------


After learning about dimensional modeling, you decide to restructure the schema for the database. Runs has been pre-loaded for you.

Question
Out of these possible answers, what would be the best way to organize the fact table and dimensional tables?
Answer: 
A fact table holding duration_mins and foreign keys to dimension tables holding route details and week details, respectively.


*/

/*
Create a dimension table called route that will hold the route information.
Create a dimension table called week that will hold the week information.
*/

-- Create a route dimension table
CREATE TABLE route(
	route_id INTEGER PRIMARY KEY,
    park_name VARCHAR(160) NOT NULL,
    city_name VARCHAR(160) NOT NULL,
    distance_km float NOT NULL,
    route_name VARCHAR(160) NOT NULL
);
-- Create a week dimension table
CREATE TABLE week(
	week_id INTEGER PRIMARY KEY,
    week INTEGER NOT NULL,
    month VARCHAR(160) NOT NULL,
    year INTEGER NOT NULL
);













