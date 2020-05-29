/*
Recap of Common Table Expressions

Outline of the course
	. What is recursion and how to use it?
	. How could you use Common Expression Tables(CTE) for hierarchical and recursive queries?
	. How could you represent hierarchy with SQL and how to query it?
	Real-World examples (e.g. company organizations, bill of materials, flight plan)


What is a CTE?
	. Definition of a CTE
		Specifies a temporary named result set, known as a common table expressin(CTE). This is derived from a simple query and defined within the execution scope of a single statement.

	. Structure of a CTE

		WITH CTEtable AS 
		(
			--a query
		)
		SELECT *
			FROM CTEtable


Use of CTEs
	. Manage complicated queries
	. Can be used within SELECT, INSERT, UPDATE, or DELETE statements
	. More than one CTE can be defined in one WITH statement
	. Combine serveral CTEs with UNION or JOIN
	. Substitute for a view
	. Self-reference a table
	. Recursion query


Define a CTE for an IT-organization
Select managers using a CTE:
	WITH JOB (id, SurName, JobTitle) AS
	(
		SELECT 
			ID, 
			Name,
			Position
		FROM employee
		WHERE Position LIKE '%Manager%'
	),

	. WITH AD to define the CTE
	. SELECT on the Employee table


Select employees with salary over 10 000:
	SALARIES (ID, Salary) AS (
		SELECT 
			ID,
			Salary
		FROM ITSalary
		WHERE Salary > 10000
	)


The Whole query:
	WITH JOBS (id, SurName, JobTitle) AS (
		SELECT ID, Name, Position
		FROM employee
		WHERE Position LIKE '%Manager%'
	)
	SALARIES (ID, Salary) AS (
		SELECT 
			ID,
			Salary
		FROM ITSalary
		WHERE Salary > 10000
	)
	SELECT JOBS.NAME, JOBS.POSITION, JOBS.Salary
	FROM JOBS
	INNER JOIN SALARIES
	ON JOBS.ID = SALARIES.ID;


*/






