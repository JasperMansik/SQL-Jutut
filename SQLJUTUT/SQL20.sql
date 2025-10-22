/*Delete all the artist records who does not have any artwork stored in the database.*/
DELETE FROM Artist
WHERE artistId NOT IN (
    SELECT DISTINCT artistId
    FROM ArtWork
    WHERE artistId IS NOT NULL
);