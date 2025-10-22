/* The exhibition "New North - New Perspectives" at the Cultural Center Valve Gallery is cancelled.
   Therefore, the records corresponding to this exhibition should be deleted from the database.
   There is no need to delete the data on the artists.
   But the exhibition record and records of which artwork are on display should be deleted.
 */
DELETE FROM On_Exhibition
WHERE exhibitionId= (SELECT exhibitionId FROM Exhibition e JOIN Location l ON e.locationId = l.locationId WHERE e.title = 'New North - New Perspectives'
                    AND l.name ='Cultural Center Valve Gallery');

DELETE FROM Exhibition
WHERE title = 'New North - New Perspectives'
AND locationId = (SELECT locationId FROM Location WHERE name= 'Cultural Center Valve Gallery');
