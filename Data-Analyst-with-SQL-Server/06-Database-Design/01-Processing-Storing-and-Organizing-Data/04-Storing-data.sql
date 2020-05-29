/*
Storing date

Structuring date:
1. Structured data
	- Follows a schema
	- Defined date types & relationships
	e.g., SQL, tables in a relational database

2. Unstructured data
	- Schemaless
	- Makes up most of date in the world
	e.g., photos, chat logs, MP3

3. Semi-structured data
	- Does not follow larger schema
	- Self-describing structure
	e.g., NoSQL, XML, JSONG


Storing data beyond traditional database
. Traditional databases
	- For storing real-time relational structured date? OLAP
. Data warehouses
	- For analyzing arvhived structured data? OLAP

. Data lakes
	- For storing data of all structures = flexibility and scalability
	- For analyzing big data


Data warehouese
. Optimized for analytics - OLAP
	- Organized for reading & aggregating data
	- Usually read-only

. Contains data from multiple sources
. Massively Parallel Processing(MPP)
. Typically uses a denormalized schema and dimensional modeling

Data marts
. Subset of data warehouses
. Dedicated to a specific topic

Data lakes
. Store all types of data at a lower cost
	- e.g., RAW, OPERATIONAL DATABASES, IoT device logs, real-time, relational and non-relationa
. Retains all data and can take up petabytes
. Schema-on-read as opposed to schema-on-write
. Need to catalog data otherwise becomes a data swamp
. Run big data analytics using services such as Apache Spark and Hadoop
 	- Useful for deeop learning and data discovery because activities require so much data


ETL: Data Sources(IoT Logs, Files, APIs, OLTP) -- Extract -> Staging(transform) 
		-- Load -> Data Warehouse --> Use(Machine learning, data marts, BI Tools, Anaylais, Export)

ELT: Data Sources(IoT Logs, Files, APIs, OLTP) -- Extract -> 
		(Load -- Data Lake --> Transform ) --> Use(Machine learning, data marts, BI Tools, Anaylais, Export)


*/













