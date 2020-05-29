/*
Rounding numbers
Sometimes, you only care about the whole dollar amount and want to ignore the decimal values of the cost. In this exercise, you will round the cost to the nearest dollar.
*/

/*
Write a SQL query to round the values in the Cost column to the nearest whole number.
*/
-- Round Cost to the nearest dollar
SELECT Cost, 
       ROUND(Cost, 0) AS RoundedCost
FROM Shipments




