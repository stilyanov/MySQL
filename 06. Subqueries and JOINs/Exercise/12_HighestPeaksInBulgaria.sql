SELECT c.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation 
FROM countries c
	JOIN mountains_countries mc ON mc.country_code = c.country_code
	JOIN mountains m ON m.id = mc.mountain_id
	JOIN peaks p ON p.mountain_id = m.id
WHERE c.country_name = 'Bulgaria' AND p.elevation > 2835
ORDER BY p.elevation DESC;