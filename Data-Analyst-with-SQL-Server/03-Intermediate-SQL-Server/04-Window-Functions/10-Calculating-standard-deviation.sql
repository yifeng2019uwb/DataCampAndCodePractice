/*
Calculating standard deviation
Calculating the standard deviation is quite common when dealing with numeric columns. In this exercise, you will calculate the running standard deviation, similar to the running total you calculated in the previous lesson.
*/


/*
Create the window, partition by TerritoryName and order by OrderDate to calculate a running standard deviation of OrderPrice.
*/
SELECT OrderDate, TerritoryName, 
       -- Calculate the standard deviation
	   STDEV(OrderPrice) 
       OVER(PARTITION BY TerritoryName ORDER BY OrderDate) AS StdDevPrice	  
FROM Orders


