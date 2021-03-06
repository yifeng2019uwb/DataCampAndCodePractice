/*
Calculating mode (II)
In the last exercise, you created a CTE which assigned row numbers to each unique value in OrderPrice. All you need to do now is to find the OrderPrice with the highest row number.
*/


/*
Use the CTE ModePrice to return the value of OrderPrice with the highest row number.
*/
-- CTE from the previous exercise
WITH ModePrice (OrderPrice, UnitPriceFrequency)
AS
(
	SELECT OrderPrice,
	ROW_NUMBER() 
    OVER (PARTITION BY OrderPrice ORDER BY OrderPrice) AS UnitPriceFrequency
	FROM Orders
)

-- Select the order price from the CTE
SELECT OrderPrice AS ModeOrderPrice
FROM ModePrice
-- Select the maximum UnitPriceFrequency from the CTE
WHERE UnitPriceFrequency IN (SELECT MAX(UnitPriceFrequency) FROM ModePrice)



