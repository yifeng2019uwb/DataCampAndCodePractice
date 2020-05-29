/*
Normalized and demensionalized databases

Denormalized: star schema

Normalized: snowflake schema


Whey Normalize?
1. Normalization saves space - Normalization eliminates data redundancy
	Normalizatino ensures better data integrity
		- Enforces data consistency: 	Must respect naming conventions because of referential integrity, e.g., 'California', no 'CA' or 'california'
		- Safer undating, removing, and inserting:	Less data redundancy = less records to alter
		- Easier to redesign by extending:	Smaller tables are easier to extend than larger tables


Database normalization:
Advantages:
	- Normalizatino eliminates data redundancy: save on storage
	- Better data integrity: accurate and consistent data

Disadvantages:	
	- Complex queries require more CPU


Remember OLTP and OLAP
OLTP: e.g., Operational databases
Tipically highly normalized
	- Write-intensive
	- Prioritize quicker and safer insertion of data

OLAP: e.g., Data warehouses
Typically less normalized
	- Read-intensive
	- Prioritize quicker queries for analytics
	


*/



