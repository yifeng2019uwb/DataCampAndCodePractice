/*
Seeing prior and future periods
The LAG() and LEAD() window functions give us the ability to look backward or forward in time, respectively. This gives us the ability to compare period-over-period data in a single, easy query.

In this exercise, we want to compare the number of security incidents by day for incident types 1 and 2 during July of 2019, specifically the period starting on July 2nd and ending July 31st.
*/

/*
Fill in the window function to return the prior day's number of incidents, partitioned by incident type ID and ordered by the incident date.
Fill in the window function to return the next day's number of incidents, partitioned by incident type ID and ordered by the incident date.
*/
SELECT
	ir.IncidentDate,
	ir.IncidentTypeID,
    -- Get the prior day's number of incidents
	LAG(ir.NumberOfIncidents, 1) OVER (
      	-- Partition by incident type ID
		PARTITION BY ir.IncidentTypeID
      	-- Order by incident date
		ORDER BY ir.IncidentDate
	) AS PriorDayIncidents,
	ir.NumberOfIncidents AS CurrentDayIncidents,
    -- Get the next day's number of incidents
	LEAD(ir.NumberOfIncidents, 1) OVER (
      	-- Partition by incident type ID
		PARTITION BY ir.IncidentTypeID
      	-- Order by incident date
		ORDER BY ir.IncidentDate
	) AS NextDayIncidents
FROM dbo.IncidentRollup ir
WHERE
	ir.IncidentDate >= '2019-07-02'
	AND ir.IncidentDate <= '2019-07-31'
	AND ir.IncidentTypeID IN (1, 2)
ORDER BY
	ir.IncidentTypeID,
	ir.IncidentDate;