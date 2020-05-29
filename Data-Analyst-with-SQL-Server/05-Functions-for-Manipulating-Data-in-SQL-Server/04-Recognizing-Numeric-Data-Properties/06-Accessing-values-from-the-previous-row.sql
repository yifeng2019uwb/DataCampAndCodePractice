/*
Accessing values from the previous row
By using the LAG() function in a query, you can access rows previous to the current one.

This is the syntax: LAG(numeric_expression) OVER ([PARTITION BY column] ORDER BY column)

In this exercise, you will use this function in your query. You will analyze the ratings of the chocolate bars produced by a company called "Fruition".

This company produces chocolate with cocoa coming from different areas of the world.

You want to check if there is a correlation between the percentage of cocoa and the score received, for the bars coming from the same location. For this, you will compare the cocoa percentage of each bar with the percentage of the bar that received the previous rating. Then, you will calculate the difference between these values and interpret the results.
*/


/*
Create a new column, showing the cocoa percentage of the chocolate bar that received a lower score, with cocoa coming from the same location (broad_bean_origin is the same).
Create a new column with the difference between the current bar's cocoa percentage and the percentage of the previous bar.

*/
SELECT 
	broad_bean_origin AS bean_origin,
	rating,
	cocoa_percent,
    -- Retrieve the cocoa % of the bar with the previous rating
	LAG(cocoa_percent) 
		OVER(PARTITION BY broad_bean_origin ORDER BY rating) AS percent_lower_rating
FROM ratings
WHERE company = 'Fruition'
ORDER BY broad_bean_origin, rating ASC;
