/** List the cities where an art exhibition in a museum had more than 5000 visitors in descending order. 
Ordering should be done based on number of visitors. 
(The output should not contain duplicate entries)**/

SELECT DISTINCT Location.city
FROM Exhibition
JOIN Location ON Exhibition.locationId = Location.locationId
WHERE Location.locationType = 'museum'
AND Exhibition.numberOfVisitors >5000
ORDER BY Exhibition.numberOfVisitors DESC;