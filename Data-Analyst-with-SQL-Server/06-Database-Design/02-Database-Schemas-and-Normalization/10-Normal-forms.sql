/*
Mormalization
Identify repeating groups of data and create new tables for them
A more formal definition:	
	The goals of normalization are to:
		- Be able to characterize the level of redundancy in a relational schema
		- Provide mechanisms for transforming schemas in order to remove redundancy

Normal forms(NF)
Ordered from least to most normalized:
	- First normal form(1NF)
	- Second normal form(2NF)
	- Third normal form(3NF)
	- Elementary key normal form(EKNF)
	- Boyce-Codd normal form(BCNF)
	- Fourth normal form (4NF)
	- Essential tuple normal form(ETNF)
	- Fifth normal form(5NF)
	- Domain-key Normal form(DKNF)
	- Sixth normal form(6NF)


1NF rules
	- Each record must be unique - no dulplicate rows
	- Each cell must hold one value


2NF 
	- Must satifify 1NF AND
		- If primary key is one column
			- then automatically satifies 2NF
		- If there is a composite primary key
			- then each non-key column must be dependent on all the keys

3NF
	- Satisfies 2NF
	- No transitive dependencies: non-key columns can't be depend on other non-key columns


Data anomalies
What is risked if we don't normalize enough?
	- Update anomaly
		- Data inconsistency caused by data redundancy when updating
		To update student 520's email
			- Need to update more than one record, otherwise , there will be inconsistency
			- User updating needs to know about redundancy

	- Insertion anomaly
		- Unable to add a record due to missing attributes
			Unable to insert a student who has signed up but not enrolled in any courses


	- Deletion anomaly
		- Deletion of record(s) causes unintentional loss of data
			If we delete student 230, what happends to the data on Cleaning Data in R?

The more normalized the database, the less prone it will be to data anamalies
Don't forget the downsides of normalization from the last video




*/


