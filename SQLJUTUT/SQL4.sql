SELECT title, price, type	
FROM ArtWork
WHERE (type = 'painting' OR type = 'sculpture')
 AND price > 50000;
 