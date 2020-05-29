/*
Assigning row numbers
Records in T-SQL are inherently unordered. Although in certain situations, you may want to assign row numbers for reference. In this exercise, you will do just that.
*/


/*
Write a T-SQL query that assigns row numbers to all records partitioned by TerritoryName and ordered by OrderDate.
*/
SELECT TerritoryName, OrderDate, 
       -- Assign a row number
       ROW_NUMBER() 
       -- Create the partitions and arrange the rows
       OVER(PARTITION BY TerritoryName ORDER BY OrderDate) AS OrderCount
FROM Orders


