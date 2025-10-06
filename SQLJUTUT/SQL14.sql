
 UPDATE Exhibition
 SET numberOfOnlineVisitors = 50000, numberOfVisitors = 14000
 WHERE title = 'Navigating North'
   AND startDate = '2022-10-07'
   AND endDate = '2023-04-02'
AND Exhibition.locationId = (SELECT locationId FROM Location WHERE name = 'Museum of Contemporary Art Kiasma');