/*
Queries with derived tables (II)
In this exercise, you will create a derived table to return all patient records with the highest BloodPressure at their Age level.```

```
*/

/*
Create a derived table
returning Age and MaxBloodPressure; the latter is the maximum of BloodPressure.
is taken from the kidney table.
is grouped by Age.
Join the derived table to the main query on
blood pressure equal to max blood pressure.
age.

*/
SELECT *
FROM Kidney a
-- Create derived table: select age, max blood pressure from kidney grouped by age
JOIN (SELECT Age, MAX(BloodPressure) AS MaxBloodPressure FROM Kidney GROUP BY Age) b
-- JOIN on BloodPressure equal to MaxBloodPressure
ON a.BloodPressure = b.MaxBloodPressure
-- Join on Age
AND a.Age = b.Age



