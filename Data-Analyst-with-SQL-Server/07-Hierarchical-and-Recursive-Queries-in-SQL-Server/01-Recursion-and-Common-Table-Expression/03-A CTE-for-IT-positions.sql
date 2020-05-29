/*
A CTE for IT-positions
To practice writing CTEs, let's start with a simple example. You will use the employee table which is built up of fields such as ID, Name, and Position. The task for you is to create a CTE called ITjobs (keep in mind the syntax WITH CTE_Name As) that finds employees named Andrea whose job titles start with IT. Finally, a new query will retrieve all IT positions and names from the ITJobs CTE.

To search for a pattern, you have to use the LIKE statement and % representing the search direction. For example, using a WHERE statement with LIKE 'N%' will find patterns starting with N.

*/

/*
Create the CTE ITjobs.
Define the fields of the CTE as ID, Name, and Position.
Find the positions starting with IT and the name starting with A.
*/

-- Define the CTE ITjobs by the WITH operator
WITH ITJobs (ID, Name, Position) AS (
    SELECT 
  		ID, 
  		Name,
  		Position
    FROM employee
    -- Find IT jobs and names starting with A
  	WHERE Position LIKE 'IT%' AND Name LIKE 'A%')
    
SELECT * 
FROM ITjobs;






