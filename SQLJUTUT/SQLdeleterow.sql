DELETE FROM Exhibition
WHERE title = 'Navigating North'
  AND exhibitionId NOT IN (
    SELECT MIN(exhibitionId)
    FROM Exhibition
    WHERE title = 'Navigating North'
);