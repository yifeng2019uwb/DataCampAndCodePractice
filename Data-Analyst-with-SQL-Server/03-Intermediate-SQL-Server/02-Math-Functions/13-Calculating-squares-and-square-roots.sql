/*
Calculating squares and square roots
It's time for you to practice calculating squares and square roots of columns.
*/

/*
Write a query that calculates the square and square root of the WeightValue column.
*/
-- Return the square and square root of WeightValue
SELECT WeightValue, 
       SQUARE(WeightValue) AS WeightSquare, 
       SQRT(WeightValue) AS WeightSqrt
FROM Shipments



