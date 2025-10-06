SELECT title, price
FROM ArtWork
WHERE type = 'painting' AND price>1000000
ORDER BY price DESC;