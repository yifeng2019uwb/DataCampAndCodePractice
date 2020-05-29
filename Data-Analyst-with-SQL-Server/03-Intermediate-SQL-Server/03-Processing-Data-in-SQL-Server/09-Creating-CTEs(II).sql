/*
Creating CTEs (II)
In this exercise, you will use a CTE to return all the information regarding the patient(s) with the maximum BloodPressure.
*/

/*
Create a CTE BloodPressure that returns one column (MaxBloodPressure) which contains the maximum BloodPressure in the table.
Join this CTE (using an alias b) to the main table (Kidney) to return information about patients with the maximum BloodPressure.

*/
-- Create the CTE
WITH BloodPressure(MaxBloodPressure) 
AS (SELECT MAX(BloodPressure) AS MaxBloodPressure FROM Kidney )

SELECT *
FROM Kidney a
-- Join the CTE  
JOIN BloodPressure b
ON  a.BloodPressure = b.MaxBloodPressure






