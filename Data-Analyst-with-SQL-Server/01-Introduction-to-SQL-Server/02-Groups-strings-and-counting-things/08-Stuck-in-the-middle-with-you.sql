/*
Stuck in the middle with you
You might be fortunate, and find that the interesting parts of your strings are at either end. However, chances are, you'll want to retrieve characters from somewhere around the middle. Let's see how to use RIGHT, LEN, CHARINDEX AND SUBSTRING to extract the interior portion of a text string. The description column can contain multiple reasons for power outages in each row. We want to extract any additional causes of outage whenever Weather appears in the description column.
*/

/*
You can use CHARINDEX to find a specific character or pattern within a column. Edit the query to return the CHARINDEX of the string 'Weather' whenever it appears within the description column.
*/
-- Complete the query to find `Weather` within the description column
SELECT 
  description, 
  CHARINDEX('Weather', description) 
FROM 
  grid
WHERE description LIKE '%Weather%';

/*
We now know where 'Weather' begins in the description column. But where does it end? We could manually count the number of characters, but, for longer strings, this is more work, especially when we can also find the length with LEN.
*/
-- Complete the query to find the length of `Weather'
SELECT 
  description, 
  CHARINDEX('Weather', description) AS start_of_string,
  LEN('Weather') AS length_of_string 
FROM 
  grid
WHERE description LIKE '%Weather%'; 


/*
Now we use SUBSTRING to return everything after Weather for the first ten rows. The start index here is 15, because the CHARINDEX for each row is 8, and the LEN of Weather is 7.
*/
-- Complete the substring function to begin extracting from the correct character in the description column
SELECT TOP (10)
  description, 
  CHARINDEX('Weather', description) AS start_of_string, 
  LEN ('Weather') AS length_of_string, 
  SUBSTRING(
    description, 
    15, 
    LEN(description)
  ) AS additional_description 
FROM 
  grid
WHERE description LIKE '%Weather%';


