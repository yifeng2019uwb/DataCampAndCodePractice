/*
Contrasting ROW_NUMBER(), RANK(), and DENSE_RANK()
Among the ranking window functions, ROW_NUMBER() is the most common, followed by RANK() and DENSE_RANK(). Each of these ranking functions (as well as NTILE()) provides us with a different way to rank records in SQL Server.

In this exercise, we would like to determine how frequently each we see incident type 3 in our data set. We would like to rank the number of incidents in descending order, such that the date with the highest number of incidents has a row number, rank, and dense rank of 1, and so on. To make it easier to follow, we will only include dates with at least 8 incidents.

*/

/*
Fill in each window function based on the column alias. You should include ROW_NUMBER(), RANK(), and DENSE_RANK() exactly once.
Fill in the OVER clause ordering by ir.NumberOfIncidents in descending order.

*/
SELECT
	ir.IncidentDate,
	ir.NumberOfIncidents,
    -- Fill in each window function and ordering
    -- Note that all of these are in descending order!
	ROW_NUMBER() OVER (ORDER BY ir.NumberOfIncidents DESC) AS rownum,
	RANK() OVER (ORDER BY ir.NumberOfIncidents DESC) AS rk,
	DENSE_RANK() OVER (ORDER BY ir.NumberOfIncidents DESC) AS dr
FROM dbo.IncidentRollup ir
WHERE
	ir.IncidentTypeID = 3
	AND ir.NumberOfIncidents >= 8
ORDER BY
	ir.NumberOfIncidents DESC;

	