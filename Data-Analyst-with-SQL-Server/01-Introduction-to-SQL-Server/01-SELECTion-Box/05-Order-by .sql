/*
Order by
In this exercise, you'll practice the use of ORDER BY using the grid dataset. It's loaded and waiting for you! It contains a subset of wider publicly available information on US power outages.

Some of the main columns include:

description: The reason/ cause of the outage.
nerc_region: The North American Electricity Reliability Corporation was formed to ensure the reliability of the grid and comprises several regional entities).
demand_loss_mw: How much energy was not transmitted/consumed during the outage.
*/

/*
Select description and event_date from grid. Your query should return the first 5 rows, ordered by event_date.
*/
-- Select the first 5 rows from the specified columns
SELECT 
  TOP (5) description, 
  event_date 
FROM 
  grid 
  -- Order your results by the event_date column
ORDER BY 
  event_date;

/*
Modify your code based on the comments provided on the right.
*/
-- Select the top 20 rows from description, nerc_region and event_date
SELECT 
  TOP (20) description,
  nerc_region,
  event_date
FROM 
  grid 
  -- Order by nerc_region, affected_customers & event_date
  -- Event_date should be in descending order
ORDER BY
  nerc_region,
  affected_customers,
  event_date DESC;
  
