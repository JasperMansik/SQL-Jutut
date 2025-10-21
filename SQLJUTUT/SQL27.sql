SELECT e.title, ROUND(AVG(oe.numberOflikes),2) AS avg_likes
FROM On_Exhibition oe
JOIN Exhibition e ON oe.ExhibitionId = e.ExhibitionId
GROUP BY e.title
ORDER BY avg_likes DESC;