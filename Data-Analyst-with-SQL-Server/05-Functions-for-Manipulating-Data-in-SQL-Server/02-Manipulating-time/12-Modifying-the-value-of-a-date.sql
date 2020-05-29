/*
Modifying the value of a date
Adding different date parts to a date expression proves to be useful in many scenarios. You can calculate, for example:

The delivery date of an order, by adding 3 days to the order date
The dates when a bonus is received, knowing that they are received every 3 months, starting with a certain date.
In SQL Server, you can use DATEADD() for adding date parts to a date. In this exercise, you will get familiar with this function.
*/


/*
Retrieve the date when each voter had their 18th birthday.

*/
SELECT 
	first_name,
	birthdate,
    -- Add 18 years to the birthdate
	DATEADD(YEAR, 18, birthdate) AS eighteenth_birthday
  FROM voters;


/*
Add five days to the first_vote_date, to calculate the date when the vote was processed.
*/
SELECT 
	first_name,
	first_vote_date,
    -- Add 5 days to the first voting date
	DATEADD(DAY, 5, first_vote_date) AS processing_vote_date
  FROM voters;
  

/*
Calculate what day it was 476 days ago.
*/
SELECT
	-- Subtract 476 days from the current date
	DATEADD(DAY, -476, SYSDATETIME()) AS date_476days_ago;
