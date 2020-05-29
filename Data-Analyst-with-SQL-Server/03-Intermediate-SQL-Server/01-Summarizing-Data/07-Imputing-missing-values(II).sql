/*
Imputing missing values (II)
What if you want to replace missing values in one column with another and want to check the replacement column to make sure it doesn't have any missing values? To do that you need to use the COALESCE statement.

SELECT Shape, City, COALESCE(Shape, City, 'Unknown') as NewShape
FROM Incidents
+----------------+-----------+-------------+
| Shape          |  City     |  NewShape   |
+----------------+-----------+-------------+
| NULL           | Orb       | Orb         |
| Triangle       | Toledo    | Triangle    |
| NULL           | NULL      | Unknown     | 
+----------------+-----------+-------------+
*/

/*
Replace missing values in Country with the first non-missing value from IncidentState or City, in that order. Name the new column Location.
*/
-- Replace missing values 
SELECT Country, COALESCE(IncidentState, City, 'unknown') AS Location
FROM Incidents
WHERE Country IS NULL





