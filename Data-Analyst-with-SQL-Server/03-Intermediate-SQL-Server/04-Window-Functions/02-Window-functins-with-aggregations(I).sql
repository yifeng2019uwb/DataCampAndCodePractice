/*
Window functions with aggregations (I)
To familiarize yourself with the window functions, you will work with the Orders table in this chapter. Recall that using OVER(), you can create a window for the entire table. To create partitions using a specific column, you need to use OVER() along with PARTITION BY.
*/

/*
Write a T-SQL query that returns the sum of OrderPrice by creating partitions for each TerritoryName.

*/
SELECT OrderID, TerritoryName, 
       -- Total price for each partition
       SUM(OrderPrice) 
       -- Create the window and partitions
       OVER(PARTITION BY TerritoryName) AS TotalPrice
FROM Orders








