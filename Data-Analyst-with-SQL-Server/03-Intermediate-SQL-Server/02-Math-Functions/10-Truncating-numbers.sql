/*
Truncating numbers
Since rounding can sometimes be misleading, i.e., $16.8 becomes $17 while $16.4 remains $16, you may want to truncate the values after the decimal instead of rounding them. When you truncate the numbers, both $16.8 and $16.4 remain $16. In this exercise, you will do just that, truncate the Cost column to a whole number.
*/

/*
Write a SQL query to truncate the values in the Cost column to the nearest whole number.
*/
-- Truncate cost to whole number
SELECT Cost, 
       ROUND(Cost, 0, 1) AS TruncateCost
FROM Shipments




