CREATE PROCEDURE usp_get_towns_starting_with(letter VARCHAR(5))
BEGIN
    SELECT name
    FROM towns
    WHERE name LIKE CONCAT(letter, '%')
    ORDER BY name;
END;

CALL usp_get_towns_starting_with('b');