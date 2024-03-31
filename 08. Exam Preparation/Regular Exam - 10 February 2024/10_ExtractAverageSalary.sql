CREATE FUNCTION udf_average_salary_by_position_name(name VARCHAR(40))
    RETURNS DECIMAL(19, 2)
    DETERMINISTIC
BEGIN
    DECLARE result DECIMAL(19, 2);
    SET result := (SELECT ROUND(AVG(w.salary), 2) AS position_average_salary
                   FROM positions p
                            JOIN workers w ON p.id = w.position_id
                   WHERE p.name = name);
    RETURN result;
END;