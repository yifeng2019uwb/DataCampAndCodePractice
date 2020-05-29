/*
Adding days to a date
In this exercise, you will calculate the approximate delivery date of an order based on ShipDate.
*/

/*
Write a query that returns the approximate delivery date as five days after the ShipDate.
*/
-- Return the DeliveryDate as 5 days after the ShipDate
SELECT OrderDate, 
       DATEADD(DAY,5, ShipDate) AS DeliveryDate
FROM Shipments



