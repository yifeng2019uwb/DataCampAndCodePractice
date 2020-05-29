/*
MIN, MAX and AVG
Along with summing and counting, you'll frequently need to find the minimum, maximum, and average of column values. Thankfully, T-SQL has functions you can use to make the task easier!
*/

/*
Retrieve the length of the description column, returning the results as description_length.
*/
-- Calculate the length of the description column
SELECT 
  LEN (description) AS description_length 
FROM 
  grid;

