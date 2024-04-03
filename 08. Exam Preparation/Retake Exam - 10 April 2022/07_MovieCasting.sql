SELECT CONCAT(a.first_name, ' ', a.last_name) AS full_name,
       CONCAT(REVERSE(a.last_name), CHAR_LENGTH(a.last_name), '@cast.com') AS email,
       2022 - YEAR(a.birthdate) AS age,
       a.height
FROM actors a
WHERE id NOT IN (SELECT DISTINCT actor_id FROM movies_actors)
ORDER BY a.height;