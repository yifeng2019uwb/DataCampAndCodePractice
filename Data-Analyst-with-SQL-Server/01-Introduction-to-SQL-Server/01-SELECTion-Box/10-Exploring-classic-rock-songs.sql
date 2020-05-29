/*
Exploring classic rock songs
It's time to rock and roll! In this set of exercises, you'll use the songlist table, which contains songs featured on the playlists of 25 classic rock radio stations.

First, let's get familiar with the data.
*/


/*
Retrieve the song, artist, and release_year columns from the songlist
*/
-- Retrieve the song, artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year
FROM
  songlist

/*
Make sure there are no NULL values in the release_year column.
*/
-- Retrieve the song, artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE 
  release_year IS NOT NULL 


/*
Order the results by artist and release_year.
*/
-- Retrieve the song,artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE 
  release_year IS NOT NULL 
  -- Arrange the results by the artist and release_year columns
ORDER BY 
  artist, 
  release_year;
  