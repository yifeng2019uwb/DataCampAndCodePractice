/*
Slide to the left
Sliding windows allow you to create running calculations between any two points in a window using functions such as PRECEDING, FOLLOWING, and CURRENT ROW. You can calculate running counts, sums, averages, and other aggregate functions between any two points you specify in the data set.

In this exercise, you will expand on the examples discussed in the video, calculating the running total of goals scored by the FC Utrecht when they were the home team during the 2011/2012 season. Do they score more goals at the end of the season as the home or away team?
*/


/*
Complete the window function by:
Assessing the running total of home goals scored by FC Utrecht.
Assessing the running average of home goals scored.
Ordering both the running average and running total by date.

*/
/*
ROWS BETWEEN - 
FIRST_VALUE and LAST_VALUE can be used to find a value from the very first row or very last row of the partition. Be sure to specify the frame, not only for performance reasons, but because the default frame doesn’t work as you would expect with LAST_VALUE. The default frame, RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, only goes up to the current row. The last row of the partition is not included. To get the expected results, be sure to specify ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING when using LAST_VALUE. Here is an example using FIRST_VALUE:
*/
SELECT 
	date,
	home_goal,
	away_goal,
    -- Create a running total and running average of home goals
    SUM(home_goal) OVER(ORDER BY date 
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total,
    AVG(home_goal) OVER(ORDER BY date 
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_avg
FROM match
WHERE 
	hometeam_id = 9908 
	AND season = '2011/2012';






