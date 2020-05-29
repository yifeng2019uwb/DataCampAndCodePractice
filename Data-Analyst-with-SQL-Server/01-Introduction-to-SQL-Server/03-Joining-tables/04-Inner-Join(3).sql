/*
Inner Join (III) - Join 3 tables
We've seen how to join 2 tables together - album with track, and album with artist. In this exercise, you'll join all three tables to pull together a more complete result set. You'll continue using INNER JOIN, but you need to specify more than one.

Here, note that because both track and artist contain a name column, you need to qualify where you are selecting the columns by prefixing the column name with the table name.
*/


/*
Qualify the name column by specifying the correct table prefix in both cases.
Complete both INNER JOIN clauses to join album with track, and artist with album.
*/
SELECT track_id,
-- Enter the correct table name prefix when retrieving the name column from the track table
  track.name AS track_name,
  title as album_title,
  -- Enter the correct table name prefix when retrieving the name column from the artist table
  artist.name AS artist_name
FROM track
  -- Complete the matching columns to join album with track, and artist with album
INNER JOIN album on album.album_id = track.album_id
INNER JOIN artist on artist.artist_id = album.artist_id;

