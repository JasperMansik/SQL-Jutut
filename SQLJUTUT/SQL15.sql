/* Oulu Museum of Art has acquired the following painting into their collection, i.e. Collection of the Oulu Museum of Art:
- La Merenda by Elin Danielson-Gambogi (1904, oil on canvas)
Update the database according to the above information. Note that the database contains already a record for this painting.

 */
  UPDATE ArtWork
     SET collectionId = (SELECT c.collectionId
      FROM Collection c
      JOIN Location l ON c.locationId = l.locationId
      WHERE c.name = 'Collection of the Oulu Museum of Art'
      AND l.name = 'Oulu Museum of Art'
  )
  WHERE title = 'La Merenda'
      AND artistId = (
      SELECT artistId
      FROM Artist
      WHERE name = 'Elin Danielson-Gambogi'
      );

