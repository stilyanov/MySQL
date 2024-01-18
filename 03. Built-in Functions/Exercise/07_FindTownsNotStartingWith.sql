SELECT *
FROM towns
WHERE NOT (name LIKE 'R%' OR name LIKE 'B%' OR name LIKE 'D%')
ORDER BY name;

SELECT *
FROM towns
WHERE SUBSTRING(name, 1, 1) NOT IN ('R', 'B', 'D')
ORDER BY name;