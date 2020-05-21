/*
Slide to the right
Now let's see how FC Utrecht performs when they're the away team. You'll notice that the total for the season is at the bottom of the data set you queried. Depending on your results, this could be pretty long, and scrolling down is not very helpful.

In this exercise, you will slightly modify the query from the previous exercise by sorting the data set in reverse order and calculating a backward running total from the CURRENT ROW to the end of the data set (earliest record).
*/


/*
Complete the window function by:
Assessing the running total of home goals scored by FC Utrecht.
Assessing the running average of home goals scored.
Ordering both the running average and running total by date, descending.


*/
/*
ROWS BETWEEN - 
FIRST_VALUE and LAST_VALUE can be used to find a value from the very first row or very last row of the partition. Be sure to specify the frame, not only for performance reasons, but because the default frame doesn’t work as you would expect with LAST_VALUE. The default frame, RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, only goes up to the current row. The last row of the partition is not included. To get the expected results, be sure to specify ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING when using LAST_VALUE. Here is an example using FIRST_VALUE:
*/
SELECT 
	-- Select the date, home goal, and away goals
	date,
    home_goal,
    away_goal,
    -- Create a running total and running average of home goals
    SUM(home_goal) OVER(ORDER BY date DESC
         ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS running_total,
    AVG(home_goal) OVER(ORDER BY date DESC
         ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS running_avg
FROM match
WHERE 
	awayteam_id = 9908 
    AND season = '2011/2012';

    






