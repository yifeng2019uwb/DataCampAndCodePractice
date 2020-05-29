/*
Calculating distinct counts
The COUNT() function has a variant which can be quite useful: COUNT(DISTINCT). This distinct count function allows us to calculate the number of unique elements in a data set, so COUNT(DISTINCT x.Y) will get the unique number of values for column Y on the table aliased as x.

In this example, we will continue to look at incident rollup data in the dbo.IncidentRollup table. Management would like to know how many unique incident types we have in our three-month data set as well as the number of days with incidents. They already know the total number of incidents because you gave them that information in the last exercise.

*/

/*
Return the count of distinct incident type IDs as NumberOfIncidentTypes

Return the count of distinct incident dates as NumberOfDaysWithIncidents

Fill in the appropriate function call and input column to determine number of unique incident types and number of days with incidents in our rollup table.
*/

-- Fill in the appropriate aggregate functions
-- Fill in the functions and columns
SELECT
	COUNT(distinct ir.IncidentTypeID) AS NumberOfIncidentTypes,
	COUNT(distinct ir.IncidentDate) AS NumberOfDaysWithIncidents
FROM dbo.IncidentRollup ir
WHERE
ir.IncidentDate BETWEEN '2019-08-01' AND '2019-10-31';


