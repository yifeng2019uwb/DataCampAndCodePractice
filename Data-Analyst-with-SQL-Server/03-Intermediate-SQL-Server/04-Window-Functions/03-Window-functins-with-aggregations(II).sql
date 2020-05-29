/*
Window functions with aggregations (II)
In the last exercise, you calculated the sum of all orders for each territory. In this exercise, you will calculate the number of orders in each territory.
*/

/*
Count the number of rows in each partition.
Partition the table by TerritoryName.

*/
SELECT OrderID, TerritoryName, 
       -- Number of rows per partition
       COUNT(*) 
       -- Create the window and partitions
       OVER(PARTITION BY TerritoryName) AS TotalOrders
FROM Orders






