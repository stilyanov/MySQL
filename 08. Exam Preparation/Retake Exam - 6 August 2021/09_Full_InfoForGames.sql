SELECT g.name                                                        AS `name`,
       IF(g.budget < 50000, 'Normal budget', 'Insufficient budget') AS `budget_level`,
       t.name                                                        AS `team_name`,
       a.name                                                        AS `address_name`
FROM games g
         JOIN teams t ON g.team_id = t.id
         JOIN offices o ON t.office_id = o.id
         JOIN addresses a ON o.address_id = a.id
WHERE g.release_date IS NULL
  AND g.id NOT IN (SELECT DISTINCT game_id
                   FROM games_categories)
ORDER BY g.name;