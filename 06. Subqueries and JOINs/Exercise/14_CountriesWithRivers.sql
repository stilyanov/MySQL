SELECT c.country_name,
	r.river_name
FROM countries c
	LEFT JOIN countries_rivers cr ON cr.country_code = c.country_code
	LEFT JOIN rivers r ON r.id = cr.river_id
WHERE c.continent_code = 'AF'
ORDER BY c.country_code
LIMIT 5;