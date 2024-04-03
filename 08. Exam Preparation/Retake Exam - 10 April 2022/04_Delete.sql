DELETE
FROM countries
WHERE (SELECT COUNT(*) FROM movies WHERE country_id = countries.id) = 0;