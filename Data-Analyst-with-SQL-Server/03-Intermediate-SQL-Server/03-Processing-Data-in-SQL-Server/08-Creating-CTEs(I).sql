/*
Creating CTEs (I)
A Common table expression or CTE is used to create a table that can later be used with a query. To create a CTE, you will always use the WITH keyword followed by the CTE name and the name of the columns the CTE contains. The CTE will also include the definition of the table enclosed within the AS().

In this exercise, you will use a CTE to return all the ages with the maximum BloodGlucoseRandom in the table.
*/

/*
Create a CTE BloodGlucoseRandom that returns one column (MaxGlucose) which contains the maximum BloodGlucoseRandom in the table.
Join the CTE to the main table (Kidney) on BloodGlucoseRandom and MaxGlucose.

*/
-- Specify the keyowrds to create the CTE
WITH BloodGlucoseRandom (MaxGlucose) 
AS (SELECT MAX(BloodGlucoseRandom) AS MaxGlucose FROM Kidney)

SELECT a.Age, b.MaxGlucose
FROM Kidney a
-- Join the CTE on blood glucose equal to max blood glucose
JOIN BloodGlucoseRandom b
ON a.BloodGlucoseRandom = b.MaxGlucose




