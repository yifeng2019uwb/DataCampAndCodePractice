/*
Table partitioning

Why partition?
Tables grow(100s Gb/Tb)
Problem: queries/update become slower
Because: e.g., indices don't fit memory
Solution: split table into smaller parts(=partitioning)


Data modeling refresher
1. Conceptual data model
2. Logical data model
For partitoning, logical data model is the same
3. Physical data model
Partitioning is part of physical data model


Vertical partitioning

Horizontal paritioning


Pros/Cons of horizaontal partition
Pros: 
	- Indices of heavily-used paritions fit in memory
	- Move to specific medium: slower vs faster
	- Used for both OLAP as OLTP
Cons:
	- Partitioning existing table can be a hassle
	- Some constraints can not be set


Relation to sharding



*/



