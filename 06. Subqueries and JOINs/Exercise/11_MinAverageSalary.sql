SELECT AVG(salary) AS 'min_average_salary'
FROM employees e
GROUP BY department_id
HAVING min_average_salary < (SELECT AVG(salary) FROM employees)
ORDER BY department_id DESC
LIMIT 1;