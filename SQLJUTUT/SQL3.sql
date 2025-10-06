SELECT name, city
FROM Location 
WHERE (city = 'Oulu' OR city ='Helsinki')
 AND locationType = 'museum';