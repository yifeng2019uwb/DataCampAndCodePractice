/*
Counting the number of days between dates
In this exercise, you will calculate the difference between the order date and ship date.
*/

/*
Write a query that returns the number of days between OrderDate and ShipDate.
*/
-- Return the difference in OrderDate and ShipDate
SELECT OrderDate, ShipDate, 
       DATEDIFF(DAY, OrderDate, ShipDate) AS Duration
FROM Shipments


