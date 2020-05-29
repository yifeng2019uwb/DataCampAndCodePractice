/*
Inner Joins - a perfect match
Let's use the Chinook database, which consists of tables related to an online store, to understand how inner joins work. The album table lists albums by multiple artists. The track table lists individual songs, each with a unique identifier, but also, an album_id column that links each track to an album.

Let's find the tracks that belong to each album.
*/


/*
Perform an inner join between album and track using the album_id column.
*/
SELECT 
  track_id,
  name AS track_name,
  title AS album_title
FROM track
  -- Complete the join type and the common joining column
INNER JOIN album on album.album_id = track.album_id;
