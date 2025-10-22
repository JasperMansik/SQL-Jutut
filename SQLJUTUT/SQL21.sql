/* List the names of the artist who have created at least one painting.
   The output should not contain duplicate entries and should be arranged in alphabetical order according to artist's name.
 */

SELECT DISTINCT a.name
FROM Artist a
         JOIN ArtWork aw ON a.artistId = aw.artistId
WHERE aw.type = 'painting'
ORDER BY a.name ASC;