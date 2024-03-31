SELECT p.name,
       c.country_code,
       YEAR(p.established_on) AS founded_in
FROM preserves p
         JOIN countries_preserves cp ON p.id = cp.preserve_id
         JOIN countries c ON c.id = cp.country_id
WHERE MONTH(p.established_on) = 5
ORDER BY p.established_on
LIMIT 5;