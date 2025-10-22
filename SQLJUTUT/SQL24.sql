/* List the ongoing exhibitions in Helsinki. The output should contain the exhibition title,
   the name of the location and the end date of the exhibition.
   Sort the results in chronological order according to the end date of the exhibition.

Note: Use built-in SQLite Date and Time functions to determine the current day.
 */
SELECT e.title, l.name AS location_name, e.endDate
FROM Exhibition e
JOIN Location l ON e.locationId = l.locationId
WHERE l.city='Helsinki'
    AND DATE('now') BETWEEN e.startDate AND e.endDate
ORDER BY e.endDate asc;

