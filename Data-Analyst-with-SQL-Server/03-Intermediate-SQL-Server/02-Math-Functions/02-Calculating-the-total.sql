/*
Calculating the total
In this chapter, you will use the shipments data. The Shipments table has several columns such as:

MixDesc: the concrete type
Quantity: the amount of concrete shipped
In this exercise, your objective is to calculate the total quantity for each type of concrete used.
*/

/*
Write a T-SQL query which will return the sum of the Quantity column as Total for each type of MixDesc.
*/
-- Write a query that returns an aggregation 
SELECT MixDesc, SUM(Quantity) AS Total
FROM Shipments
-- Group by the relevant column
GROUP BY MixDesc

