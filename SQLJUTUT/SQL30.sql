SELECT DISTINCT a.name
FROM Artist a
JOIN ArtWork aw ON a.artistId = aw.artistId
JOIN On_Exhibition oe ON aw.artworkId = oe.artworkId
WHERE a.name IS NOT NULL
AND oe.numberOfLikes >0 
GROUP BY a.name
ORDER BY a.name;