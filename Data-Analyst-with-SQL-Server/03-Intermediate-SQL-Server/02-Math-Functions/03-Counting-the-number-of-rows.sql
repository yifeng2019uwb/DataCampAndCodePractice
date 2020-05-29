/*
Counting the number of rows
In this exercise, you will calculate the number of orders for each concrete type. Since each row represents one order, all you need to is count the number of rows for each type of MixDesc.
*/

/*
Create a query that returns the number of rows for each type of MixDesc.
*/
-- Count the number of rows by MixDesc
SELECT MixDesc, COUNT(*)
FROM Shipments
GROUP BY MixDesc


