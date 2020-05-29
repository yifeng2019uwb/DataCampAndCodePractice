/*
Converting to 3NF
Last, but not least, we are at 3NF. In the last exercise, you created a table holding car_idss and car attributes. This has been expanded upon. For example, car_id is now a primary key. The resulting table, rental_cars, has been loaded for you.

*/

/*
Question
Why doesn't rental_cars meet 3NF criteria?
Because there are two columns that depend on the non-key column, model.

*/

/*
Create a new table for the non-key columns that were conflicting with 3NF criteria.
Drop those non-key columns from rental_cars.
*/
-- Create a new table to satisfy 3NF
CREATE TABLE car_model(
  model VARCHAR(128),
  manufacturer VARCHAR(128),
  type_car VARCHAR(128)
);

-- Drop columns in rental_cars to satisfy 3NF
ALTER TABLE rental_cars
DROP COLUMN manufacturer,
DROP COLUMN type_car; 






