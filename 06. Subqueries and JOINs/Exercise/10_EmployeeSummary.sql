SELECT e.employee_id,
	CONCAT(e.first_name, ' ', e.last_name) AS 'employee_name',
	CONCAT(m.first_name, ' ', m.last_name) AS 'manager_name',
	d.name
FROM employees e
	JOIN employees m ON e.manager_id = m.employee_id
	JOIN departments d ON e.department_id = d.department_id
GROUP BY e.employee_id
ORDER BY e.employee_id
LIMIT 5;