SELECT COUNT(*) AS 'country_code'
FROM countries c
	LEFT JOIN mountains_countries mc ON mc.country_code = c.country_code
WHERE mc.mountain_id IS NULL;