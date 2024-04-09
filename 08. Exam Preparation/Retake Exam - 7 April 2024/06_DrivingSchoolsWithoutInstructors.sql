SELECT ds.id,
       ds.name,
       c.brand
FROM driving_schools ds
JOIN cars c ON ds.car_id = c.id
WHERE ds.id NOT IN (SELECT DISTINCT driving_school_id
                        FROM instructors_driving_schools)
ORDER BY c.brand, ds.id
LIMIT 5;