/*
Calculating the absolute value
The Shipments table contains some bad data. There was a problem with the scales, and the weights show up as negative numbers. In this exercise, you will write a query to convert all negative weights to positive weights.
*/

/*
Write a query that converts all the negative values in the DeliveryWeight column to positive values.
*/
-- Return the absolute value of DeliveryWeight
SELECT DeliveryWeight,
       ABS(DeliveryWeight) AS AbsoluteValue
FROM Shipments




