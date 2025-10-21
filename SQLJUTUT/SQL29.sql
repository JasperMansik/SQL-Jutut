SELECT DISTINCT a.name, e.title, l.city
FROM Exhibition e
JOIN Location l ON e.locationId = l.locationId
JOIN On_Exhibition oe ON e.exhibitionId = oe.exhibitionId
JOIN ArtWork aw ON oe.artworkId = aw.artworkId
JOIN Artist a ON aw.artistId = a.artistId
WHERE a.birthplace = l.city
ORDER BY a.name, e.title;