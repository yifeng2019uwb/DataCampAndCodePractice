/*
Materialized views

Two types of views

views
	- Also known as non-materialized views
	- How we've defined views so far

Materialized views
	- Physically materialized


Materialized views
	- Sotres the query results, not the query
	- Querying materialized view mwans accessing the stored query results	
		- Not running the query like a non-materialized view
	- Refreshed or rematerialized when prompted or scheduled


When to use materialized view
	- Long running queries
	- Underlying query results don't change often
	- Data warehouse because OLAP is not write-intendive
		- Save on computational cost of freqent queries


Implementing materialized views

(in PostgreSQL)

CREATE MATERIALIZED VIEW my_mv AS SELECT * FROM existing_table

REFRESH MATERIALIZED VIEW my_mv


Managing dependencies
	- Materialized views often depend on other materialized views
	- Creates a dependency chain when refreshing views
	- Not the most efficient to refresh all views at the same time


Tools for managing dependencies
	- Use Directed Acyclic Graphs(GAGs) to keep track of views
	- Pipeline scheduler tools

*/





