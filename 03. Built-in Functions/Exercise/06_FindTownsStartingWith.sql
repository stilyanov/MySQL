SELECT town_id, name 
FROM towns
WHERE SUBSTRING(name, 1, 1) IN ('M', 'K', 'B', 'E')
ORDER BY name;

SELECT town_id, name 
FROM towns
WHERE name LIKE 'M%' OR name LIKE 'K%' OR name LIKE 'B%' or name LIKE 'E%'
ORDER BY name;