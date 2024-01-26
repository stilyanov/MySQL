SELECT mountain_range, peak_name, elevation
FROM mountains m
	JOIN peaks p ON m.id = p.mountain_id
WHERE m.id = 17
ORDER BY p.elevation DESC;