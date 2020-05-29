/*

Running from star to snowflake
Remember your running database from last chapter? 


route_dim						runs_fact				
route_id 				--> 	route_id 				week_dim
park_name, city_name, 			week_id 		--> 	week_id
distance_km, route_name			duration_mins			week, month, year

After learning about the snowflake schema, you convert the current star schema into a snowflake schema. To do this, you normalize route_dim and week_dim. Which option best describes the resulting new tables after doing this?

The tables runs_fact, route_dim, and week_dim have been loaded.

week_dim is extended two dimensions with new tables for month and year. route_dim is extended two dimensions with new tables for city and park.

*/











