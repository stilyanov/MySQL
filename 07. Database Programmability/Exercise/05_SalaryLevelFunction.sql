CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(10, 4))
    RETURNS VARCHAR(20)
    READS SQL DATA
BEGIN
    DECLARE salary_level VARCHAR(20);
    IF (salary < 30000) THEN
        SET salary_level := 'Low';
    ELSEIF (salary BETWEEN 30000 AND 50000) THEN
        SET salary_level := 'Average';
    ELSE
        SET salary_level := 'High';
    END IF;
    RETURN salary_level;
END;

SELECT ufn_get_salary_level(13500.00);
SELECT ufn_get_salary_level(43300.00);
SELECT ufn_get_salary_level(125500.00);