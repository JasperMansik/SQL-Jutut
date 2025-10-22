
  INSERT INTO Location(
    locationId,name,city,country,locationType
)
VALUES((SELECT locationId FROM Location WHERE name = 'Cultural Center Valve Gallery'),
       'Cultural Center Valve Gallery', 'Oulu', 'Finland', 'art gallery'
    );
