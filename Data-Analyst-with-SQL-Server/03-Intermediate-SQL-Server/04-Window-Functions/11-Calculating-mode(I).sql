/*
Calculating mode (I)
Unfortunately, there is no function to calculate the mode, the most recurring value in a column. To calculate the mode:

First, create a CTE containing an ordered count of values using ROW_NUMBER()
Write a query using the CTE to pick the value with the highest row number
In this exercise, you will write the CTE needed to calculate the mode of OrderPrice.
*/


/*
Create a CTE ModePrice that returns two columns (OrderPrice and UnitPriceFrequency).
Write a query that returns all rows in this CTE.
*/
-- Create a CTE Called ModePrice which contains two columns
WITH ModePrice (OrderPrice, UnitPriceFrequency)
AS
(
	SELECT OrderPrice, 
	ROW_NUMBER() 
	OVER(PARTITION BY OrderPrice ORDER BY OrderPrice) AS UnitPriceFrequency
	FROM Orders 
)

-- Select everything from the CTE
SELECT *
FROM ModePrice


