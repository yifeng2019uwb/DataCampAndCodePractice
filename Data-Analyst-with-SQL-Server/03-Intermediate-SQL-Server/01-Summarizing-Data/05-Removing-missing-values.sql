/*
Removing missing values
There are a number of different techniques you can use to fix missing data in T-SQL and in this exercise, you will focus on returning rows with non-missing values. For example, to return all rows with non-missing SHAPE values, you can use:

SELECT *  
FROM Incidents
WHERE Shape IS NOT NULL
*/

/*
Write a T-SQL query which returns only the IncidentDateTime and IncidentState columns where IncidentState is not missing.

*/
-- Return the specified columns
SELECT IncidentDateTime,IncidentState

FROM Incidents
-- Exclude all the missing values from IncidentState  
WHERE IncidentState IS NOT NULL

