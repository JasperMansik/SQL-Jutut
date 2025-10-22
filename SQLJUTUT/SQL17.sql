/* Store the information on the following exhibition into the database:
Title: New North - New Perspectives
Time: 10.09.2022 - 16.10.2022
Location: Cultural Center Valve Gallery, Oulu, Finland
The exhibition will also be available online.
You can assume that there is a record for Cultural Center Valve Gallery in the database.
 */
 INSERT INTO Exhibition(
     ExhibitionId,
                        title,
                        startDate,
                        endDate,
                        isOnlineExhibition,
                        locationId
)
VALUES ((SELECT ExhibitionId FROM Exhibition WHERE title = 'New North - New Perspectives'), 'New North - New Perspectives', '2022-09-10', '' ||
'2022-10-16', 1, (SELECT locationId FROM Location WHERE name = 'Cultural Center Valve Gallery'));