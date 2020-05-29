/*
Storing dates in a database
In this exercise, you will practice your knowledge of the different data types you can use in SQL Server. You will add more columns to the voters table and decide which is the most appropriate data type for each of them.

The syntax for adding a new column in a table is the following:

ALTER TABLE table_name
ADD column_name data_type
Remember, the most common date/time data types are:

date
time
datetime
datetime2
smalldatetime.
*/


/*
Add a new column with the correct data type, for storing the last date a person voted ("2018-01-17").
*/
ALTER TABLE voters
ADD last_vote_date datetime



/*
Add a new column called last_vote_time, to keep track of the most recent time when a person voted ("16:55:00").
*/
ALTER TABLE voters
ADD last_vote_time time;


/*
Add a new column,last_login, storing the most recent time a person accessed the application ("2019-02-02 13:44:00").
*/
ALTER TABLE voters
ADD last_login datetime2;




