
SELECT DISTINCT a.name
FROM Artist a
         JOIN ArtWork aw ON a.artistId = aw.artistId
WHERE a.artistId NOT IN (
    SELECT artistId
    FROM ArtWork
    WHERE type <> 'painting'
)
ORDER BY a.name;