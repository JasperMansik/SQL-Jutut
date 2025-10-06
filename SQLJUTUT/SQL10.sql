/* List the name and the total number of visitors for each museum where an exhibition has been held.
   The total number of visitors of a museum is calculated as the sum of the number of visitors who have visited an exhibition in that museum.
   The output should include the name of the museum and the total number of visitors and
   should be sorted in alphabetical order according to museum name
 */
 SELECT l.Name AS Museum, SUM(e.numberOfVisitors) AS total_visitors
    FROM Exhibition e
    JOIN Location l ON e.locationId = l.LocationId
    WHERE l.locationType = 'museum' AND e.numberOfVisitors IS NOT NULL
    GROUP BY l.name
 ORDER BY l.name;