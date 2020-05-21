/*
Flip OVER your results
In the last exercise, the rank generated in your query was organized from smallest to largest. By adding DESC to your window function, you can create a rank sorted from largest to smallest.

SELECT 
    id,
    RANK() OVER(ORDER BY home_goal DESC) AS rank
FROM match;
*/


/*
Complete the same parts of the query as the previous exercise.
Complete the window function to rank each league from highest to lowest average goals scored.
Order the main query by the rank you just created.
*/





