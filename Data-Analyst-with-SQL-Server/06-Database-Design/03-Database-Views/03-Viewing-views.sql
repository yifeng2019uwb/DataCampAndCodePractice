/*
Viewing views
Because views are very useful, it's common to end up with many of them in your database. It's important to keep track of them so that database users know what is available to them.

The goal of this exercise is to get familiar with viewing views within a database and interpreting their purpose. This is a skill needed when writing database documentation or organizing views.

Query the information schema to get views.
Exclude system views in the results.

-- Get all non-systems views
SELECT * FROM INFORMATION_SCHEMA.views
WHERE table_schema NOT IN  ('pg_catalog', 'information_schema');

Question
What does view1 do?

Returns the content records that have reviews of more than 4000 characters.


Question
What does view2 do?
Returns the top 10 highest scored reviews published in 2017.

*/
