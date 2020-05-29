/*
Joining to a calendar table
In the prior exercise, we looked at a new table, dbo.Calendar. This table contains pre-calculated date information stretching from January 1st, 2000 through December 31st, 2049. Now we want to use this calendar table to filter another table, dbo.IncidentRollup.

The Incident Rollup table contains artificially-generated data relating to security incidents at a fictitious company.

You may recall from prerequisite courses how to join tables. Here's an example of joining to a calendar table:

SELECT
    t.Column1,
    t.Column2
FROM dbo.Table t
    INNER JOIN dbo.Calendar c
        ON t.Date = c.Date;

*/

/*
Fill in the blanks to determine which dates had type 3 incidents during the third fiscal quarter of FY2019.
*/
SELECT
	ir.IncidentDate,
	c.FiscalDayOfYear,
	c.FiscalWeekOfYear
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
    -- Incident type 3
	ir.IncidentTypeID = 3
    -- Fiscal year 2019
	AND c.FiscalYear = 2019
    -- Fiscal quarter 3
	AND c.FiscalQuarter = 3;



/*
Fill in the gaps in to determine type 4 incidents which happened on weekends in FY2019 after fiscal week 30.
*/
SELECT
	ir.IncidentDate,
	c.FiscalDayOfYear,
	c.FiscalWeekOfYear
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
WHERE
    -- Incident type 4
	ir.IncidentTypeID = 4
    -- Fiscal year 2019
	AND c.FiscalYear = 2019
    -- Beyond fiscal week of year 30
	AND c.FiscalWeekOfYear > 30
    -- Only return weekends
	AND c.IsWeekend = 'true';

