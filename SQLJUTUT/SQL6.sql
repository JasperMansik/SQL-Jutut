SELECT Exhibition.title, Location.name AS location_name,
 Location.city, Location.country
FROM Exhibition
JOIN Location ON Exhibition.locationId = Location.locationId
WHERE Exhibition.endDate >= '2021-01-01'
  AND Exhibition.startDate <= '2021-12-31';
