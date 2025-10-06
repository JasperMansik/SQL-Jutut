/* List all the solo exhibitions, i.e. exhibitions that contain artwork of only one artist.
   List the title of the exhibition, the artist name and the number of visitors.
   The list should be ordered in alphabetical order according to exhibition title.
 */
 SELECT e.title AS exhibition_title, a.name AS artist_name, e.numberOfVisitors AS numberOfVisitors
 FROM Exhibition e
 JOIN On_Exhibition oe ON e.exhibitionId = oe.exhibitionId
 JOIN ArtWork aw ON oe.artworkId = aw.artworkId
 JOIN Artist a ON aw.artistId = a.artistId
 GROUP BY e.ExhibitionId
 HAVING COUNT(DISTINCT a.artistId) = 1
 ORDER BY e.title asc;