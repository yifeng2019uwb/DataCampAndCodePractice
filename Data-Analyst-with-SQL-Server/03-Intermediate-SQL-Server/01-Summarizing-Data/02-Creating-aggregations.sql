/*
Creating aggregations
This chapter uses data gathered by the National UFO Reporting Center. The data is contained in the Incidents table and in this lesson, you will be aggregating values in the DurationSeconds column.

*/

/*
Write a T-SQL query which will return the average, minimum, and maximum values of the DurationSeconds column.

*/
-- Calculate the average, minimum and maximum
SELECT AVG(DurationSeconds) AS Average, 
       MIN(DurationSeconds) AS Minimum, 
       MAX(DurationSeconds) AS Maximum
FROM Incidents



