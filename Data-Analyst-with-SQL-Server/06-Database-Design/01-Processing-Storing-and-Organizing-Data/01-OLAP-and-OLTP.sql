/*
OLTP and OLAP

How should we organize and manage data?
1. Schemas: How should my data be logically organized?
2. Normalization: Should my data have minimal dependency and redundancy?
3. Views: What joins will be done most often?
4. Access control: Should all users of the data have the same level of access
5. DBMS: how do I pick between all the SQL and noSQL options?
and More
---It depends on the intended use of the data.

Approaches to processing date

OLTP 									OLAP
Online Transaction processing 			Online Analytical Processing

Some concrete examples
OLTP									OLAP
Tasks:
Find the price of a book				Calculate books with best profit margin
Update latest customer Transaction 		Find most loyal customers
Keep track of employee hours			Decide employee of the month

Purpose
Support daily transactions				report and analyze data

Design
Application-oriented					subject-oriented

Data
up-to-date, operational					consolidated, historical

Size
snapshot, gigabytes						archive, terabytes

Queries
Simple transactions &frequent updates	complex, aggregate queries & limited updates

Users
thousand								hundreds

Working together
OLAP: Data Warehouse - Data analysis
OLTP: Operational Database  -- Inform business practices

Takeaways
. Step back and figure out business requirements
. Difference between OLAP and OLTP



*/
