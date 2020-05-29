/*
DECLARE and SET a variable
Using variables makes it easy to run a query multiple times, with different values, without having to scroll down and amend the WHERE clause each time. You can quickly update the variable at the top of the query instead. This also helps provide greater security, but that is out of scope of this course.

Let's go back to the now very familiar grid table for this exercise, and use it to practice extracting data according to your newly defined variable.
*/


/*
DECLARE the variable @region, which has a data type of VARCHAR and length of 10.
*/
-- Declare the variable @region, and specify the data type of the variable

DECLARE @region VARCHAR(10)


/*
SET your newly defined variable to 'RFC'.
*/
-- Declare the variable @region
DECLARE @region VARCHAR(10)

-- Update the variable value
SET @region = 'RFC'

/*
Hit 'Submit Answer' to see the results!
*/
-- Declare the variable @region
DECLARE @region VARCHAR(10)

-- Update the variable value
SET @region = 'RFC'

SELECT description,
       nerc_region,
       demand_loss_mw,
       affected_customers
FROM grid
WHERE nerc_region = @region;



