SELECT c.name,
       COUNT(gc.game_id)       AS games_count,
       ROUND(AVG(g.budget), 2) AS avg_budget,
       MAX(g.rating)           AS `max_rating`
FROM categories c
         JOIN games_categories gc ON c.id = gc.category_id
         JOIN games g ON gc.game_id = g.id
GROUP BY c.name
HAVING `max_rating` >= 9.5
ORDER BY games_count DESC, c.name;