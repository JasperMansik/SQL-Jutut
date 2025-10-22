/* Write a query to list the different types of artwork along with the number of artworks of that type stored in the database.
   The list should be arranged in alphabetical order according to type.
 */
SELECT type,  COUNT(*) AS Artworks
FROM ArtWork
GROUP BY type
ORDER BY type asc;


