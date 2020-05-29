/*
Counting
Having explored the 'MRO' region, let's now explore the 'RFC' region in more detail while learning how to use the COUNT aggregate function.
nerc_region map
*/

/*
Return the COUNT of the grid_id column, aliasing the result as grid_total.
*/

-- Sum the demand_loss_mw column
-- Obtain a count of 'grid_id'
SELECT 
  COUNT(grid_id) AS grid_total 
FROM 
  grid;


/*
Make the count more meaningful by restricting it to records where the nerc_region is 'RFC'. Name the result RFC_count.
*/
-- Obtain a count of 'grid_id'
SELECT 
  COUNT(grid_id) AS RFC_count
FROM 
  grid
-- Restrict to rows where the nerc_region is 'RFC'
WHERE
  nerc_region = 'RFC';
  

