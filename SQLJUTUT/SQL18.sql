/* The following artwork will be displayed at the "New North - New Perspectives" exhibition. Create the necessary records in the database:
artist: Juuso Noronkoski
title: All That Is Solid Melts into Air
type: photography
year: 2019
 */


INSERT INTO ArtWork(
    artworkId,
    title,
    year,
    price,
    type,
    material,
    artistId,
    collectionId,
    original_artworkId
)VALUES((SELECT artworkId FROM ArtWork WHERE title = 'All That Is Solid Melts into Air'),'All That Is Solid Melts into Air',
        '2019', NULL, 'photography',NULL, (SELECT artistId FROM Artist WHERE name = 'Juuso Noronkoski'),NULL
        , NULL);

INSERT INTO On_Exhibition(
    artworkId,
    exhibitionId,
    numberOfLikes,
    numberOfOnlineLikes


)VALUES ((SELECT artworkId FROM ArtWork WHERE title = 'All That Is Solid Melts into Air'), (
    SELECT exhibitionId FROM Exhibition WHERE title = 'New North - New Perspectives'), '0', '0');