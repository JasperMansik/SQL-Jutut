SELECT Exhibition.title, Exhibition.startDate, 
Exhibition.endDate, Exhibition.numberOfVisitors, 
Location.name AS location_name, Location.city, Location.country
FROM Exhibition
JOIN Location ON Exhibition.locationId = Location.locationId
WHERE Exhibition.numberOfVisitors IS NOT NULL
ORDER BY Exhibition.numberOfVisitors DESC;
