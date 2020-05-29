/*
Having
WHERE is used to filter rows before any grouping occurs. Once you have performed a grouping operation, you may want to further restrict the number of rows returned. This is a job for HAVING. In this exercise, you will modify an existing query to use HAVING, so that only those results with a sum of over 10000 are returned.
*/

/*
Modify the provided query to remove the WHERE clause.
Replace it with a HAVING clause so that only results with a total demand_loss_mw of greater than 10000 are returned.
*/
SELECT 
  nerc_region, 
  SUM (demand_loss_mw) AS demand_loss 
FROM 
  grid 
  -- Remove the WHERE clause
WHERE demand_loss_mw  IS NOT NULL
GROUP BY 
  nerc_region 
  -- Enter a new HAVING clause so that the sum of demand_loss_mw is greater than 10000
HAVING 
  SUM(demand_loss_mw) > 10000 
ORDER BY 
  demand_loss DESC;