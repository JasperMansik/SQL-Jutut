/** List the reproductions along with the original artwork. 
The output should include the title, year, type and material of the reproduction 
and the title, year, type and material of the original artwork.
Note that if an artwork is a reproduction then the original_artworkId field is not null and 
points to the original artwork.
**/
SELECT
r.title AS rep_title,
r.year AS rep_year,
ar.name AS rep_artist_name,
r.type AS rep_type,
r.material AS rep_material,
a.title AS original_title,
a.year AS original_year,
ao.name AS original_artist_name,
a.type AS original_type,
a.material AS original_material
FROM ArtWork r
         JOIN ArtWork a ON r.original_artworkId = a.artworkId
         JOIN Artist ar ON r.artistId = ar.artistId
         JOIN Artist ao ON a.artistId = ao.artistId
ORDER BY r.artworkId;

