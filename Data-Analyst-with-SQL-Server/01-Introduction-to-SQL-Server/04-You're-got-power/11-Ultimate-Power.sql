/*
Ultimate Power
Sometimes you might want to 'save' the results of a query so you can do some more work with the data. You can do that by creating a temporary table that remains in the database until SQL Server is restarted. In this final exercise, you'll select the longest track from every album and add that into a temporary table which you'll create as part of the query.
*/


/*
Create a temporary table called maxtracks. Make sure the table name starts with #.
Join album to artist using artist_id, and track to album using album_id.
Run the final SELECT statement to retrieve all the columns from your new table.
*/
SELECT  album.title AS album_title,
  artist.name as artist,
  MAX(track.milliseconds / (1000 * 60) % 60 ) AS max_track_length_mins
-- Name the temp table #maxtracks
INTO #maxtracks
FROM album
-- Join album to artist using artist_id
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Join track to album using album_id
INNER JOIN track ON track.album_id = album.album_id
GROUP BY artist.artist_id, album.title, artist.name,album.album_id
-- Run the final SELECT query to retrieve the results from the temporary table
SELECT album_title, artist, max_track_length_mins
FROM  #maxtracks
ORDER BY max_track_length_mins DESC, artist;



