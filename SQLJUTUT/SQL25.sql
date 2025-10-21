

SELECT 
    name AS Name,
    CAST(STRFTIME('%Y', 'now') AS INTEGER) - CAST(yearBorn AS INTEGER) AS Age
FROM Artist
WHERE yearDied IS NULL

UNION
SELECT 
    name AS Name,
    CAST(yearDied AS INTEGER) - CAST(yearBorn AS INTEGER) AS Age
FROM Artist
WHERE yearDied IS NOT NULL

ORDER BY Age ASC, Name ASC;