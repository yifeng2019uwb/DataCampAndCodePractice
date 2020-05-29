/*
Arithmetic operations with dates
In this exercise, you will perform arithmetic operations on dates in two different ways: using the arithmetic operators ("+" and "-") and also using the DATEDIFF() function. You will use these variables:

DECLARE @date1 datetime = '2018-12-01';
DECLARE @date2 datetime = '2030-03-03';
Create a SELECT statement, in which to perform the following operations:

Subtract @date1 from @date2.
Add @date1 to @date2.
Using DATEDIFF(), calculate the difference in years between the results of the subtraction and the addition above.
What is the result returned by the DATEDIFF() function?  
ANSWER: 238 YEARS

DECLARE @date1 datetime = '2018-12-01';
DECLARE @date2 datetime = '2030-03-03';

SELECT
 @date1 + @date2 AS add_date,
 @date2 - @date1 AS sub_date,
 DATEDIFF(YEAR,@date1 + @date2,@date2 - @date1) AS diff
 
add_date	sub_date	diff
2149-01-31 00:00:00	1911-04-04 00:00:00	-238


*/
