/**List the artworks that aren't paintings and have never been on display in an exhibit in Finland. 
The output should contain the title, the year the artwork is produced and the type.
The results should be ordered according to the ID of the artwork. 
In most cases this doesn't require an ORDER BY keyword.**/
SELECT a.title, a.year, a.type
FROM ArtWork a
WHERE a.type != 'painting'
 AND a.artworkId NOT IN (
 SELECT oe.artworkId
      FROM On_Exhibition oe
	  JOIN Exhibition e ON oe.exhibitionId = e.ExhibitionId
	  JOIN Location l ON e.locationId = l.locationId
	  WHERE l.country ='Finland'
	  )
ORDER BY a.artworkID;