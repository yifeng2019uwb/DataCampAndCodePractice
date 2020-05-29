/*
Creating running totals
You usually don't have to use ORDER BY when using aggregations, but if you want to create running totals, you should arrange your rows! In this exercise, you will create a running total of OrderPrice.*/


/*
Create the window, partition by TerritoryName and order by OrderDate to calculate a running total of OrderPrice.

*/
SELECT TerritoryName, OrderDate, 
       -- Create a running total
       SUM(OrderPrice) 
       -- Create the partitions and arrange the rows
       OVER(PARTITION BY TerritoryName ORDER BY OrderDate) AS TerritoryTotal	  
FROM Orders


