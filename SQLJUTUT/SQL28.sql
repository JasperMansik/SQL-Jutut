SELECT e.title, a.title, MAX(numberOfLikes) AS most_likes
FROM Exhibition e
JOIN On_Exhibition oe ON e.ExhibitionId = oe.exhibitionId
JOIN Artwork a ON oe.artworkId = a.artworkId
GROUP BY e.title
ORDER BY e.title ASC;