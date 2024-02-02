CREATE PROCEDURE usp_get_employees_salary_above(number DOUBLE(36, 4))
BEGIN
    SELECT first_name, last_name
    FROM employees
    WHERE salary >= number
    ORDER BY first_name, last_name, employee_id;
END;

CALL usp_get_employees_salary_above(45000);