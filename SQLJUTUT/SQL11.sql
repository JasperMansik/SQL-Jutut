/** For the collections in the database, list the name, the number of artworks contained in the collection and the total value of the collection.
  The total value of a collection is defined as the sum of the prices of the artwork contained in that collection.
Note: An artwork with unknown value, i.e. null as value, should be included in the number of artworks contained in the collection.
  However, if the total value for a collection is null, then that collection should be excluded from the output.
  The output should be arranged in alphabetical order according to collection name.
 */
 SELECT c.name AS collection_name, COUNT(aw.artworkId) AS numberOfArtworks, SUM(aw.price) AS totalValue
     FROM Collection c
     JOIN Artwork aw ON c.collectionId = aw.collectionId
 GROUP BY c.name
 HAVING SUM(aw.price) IS NOT NULL
 ORDER BY c.name;