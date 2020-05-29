/*
Populate the "professor_id" column
Now it's time to also populate professors_id. You'll take the ID directly from professors.

Here's a way to update columns of a table based on values in another table:

UPDATE table_a
SET column_to_update = table_b.column_to_update_from
FROM table_b
WHERE condition1 AND condition2 AND ...;
This query does the following:

For each row in table_a, find the corresponding row in table_b where condition1, condition2, etc., are met.
Set the value of column_to_update to the value of column_to_update_from (from that corresponding row).
The conditions usually compare other columns of both tables, e.g. table_a.some_column = table_b.some_column. Of course, this query only makes sense if there is only one matching row in table_b.
*/

/*
Add a professor_id column with integer data type to affiliations, and declare it to be a foreign key that references the id column in professors.

*/
-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id INTEGER REFERENCES professors (id);

/*
Rename the organization column in affiliations to organization_id.
*/
-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id integer REFERENCES professors (id);

-- Rename the organization column to organization_id
ALTER TABLE  affiliations
RENAME organization TO organization_id;

/*
Add a foreign key constraint on organization_id so that it references the id column in organizations.
*/
-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id integer REFERENCES professors (id);

-- Rename the organization column to organization_id
ALTER TABLE affiliations
RENAME organization TO organization_id;

-- Add a foreign key on organization_id
ALTER TABLE affiliations
ADD CONSTRAINT affiliations_organization_fkey FOREIGN KEY  (organization_id) REFERENCES organizations (id);



