/*
Redefining a view
Unlike inserting and updating, redefining a view doesn't mean modifying the actual data a view holds. Rather, it means modifying the underlying query that makes the view. In the last video, we learned of two ways to redefine a view: (1) CREATE OR REPLACE and (2) DROP then CREATE. CREATE OR REPLACE can only be used under certain conditions.

The artist_title view needs to be appended to include a column for the label field from the labels table.


*/

/*
Question
Can the CREATE OR REPLACE statement be used to redefine the artist_title view?
Yes, as long as the label column comes at the end.

*/

/*
Redefine the artist_title view to include a column for the label field from the labels table.
*/

-- Redefine the artist_title view to have a label column
CREATE OR REPLACE VIEW artist_title AS
SELECT reviews.reviewid, reviews.title, artists.artist, labels.label
FROM reviews
INNER JOIN artists
ON artists.reviewid = reviews.reviewid
INNER JOIN labels
ON labels.reviewid = artists.reviewid;

SELECT * FROM artist_title;

