/*
First value in a window
Suppose you want to figure out the first OrderDate in each territory or the last one. How would you do that? You can use the window functions FIRST_VALUE() and LAST_VALUE(), respectively! Here are the steps:

First, create partitions for each territory
Then, order by OrderDate
Finally, use the FIRST_VALUE() and/or LAST_VALUE() functions as per your requirement
*/

/*
Write a T-SQL query that returns the first OrderDate by creating partitions for each TerritoryName.
*/
SELECT TerritoryName, OrderDate, 
       -- Select the first value in each partition
       FIRST_VALUE(OrderDate) 
       -- Create the partitions and arrange the rows
       OVER(PARTITION BY TerritoryName ORDER BY OrderDate) AS FirstOrder
FROM Orders







