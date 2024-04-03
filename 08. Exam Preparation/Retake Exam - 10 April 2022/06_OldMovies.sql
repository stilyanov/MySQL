SELECT mai.id, m.title, mai.runtime, mai.budget, mai.release_date
FROM movies_additional_info mai
         JOIN movies m ON mai.id = m.movie_info_id
WHERE YEAR(mai.release_date) >= 1996
  AND YEAR(mai.release_date) <= 1999
ORDER BY mai.runtime, id
LIMIT 20;