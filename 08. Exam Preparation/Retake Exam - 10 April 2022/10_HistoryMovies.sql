CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE history_movies INT;
    SET history_movies := (SELECT COUNT(*)
                           FROM actors a
                                    JOIN movies_actors ma ON a.id = ma.actor_id
                                    JOIN movies m ON ma.movie_id = m.id
                                    JOIN genres_movies gm ON m.id = gm.movie_id
                                    JOIN genres g ON gm.genre_id = g.id
                           WHERE g.name = 'History'
                             AND CONCAT(a.first_name, ' ', a.last_name) = full_name
                           GROUP BY gm.genre_id);
    RETURN history_movies;
END;