SELECT m.title,
       CASE
           WHEN mai.rating <= 4 THEN 'poor'
           WHEN mai.rating > 4 AND mai.rating <= 7 THEN 'good'
           ELSE 'excellent'
           END AS 'rating',
        IF(mai.has_subtitles = 1, 'english', '-') AS 'subtitles',
        mai.budget
FROM movies_additional_info mai
         JOIN movies m ON mai.id = m.movie_info_id
ORDER BY budget DESC;