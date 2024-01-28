SELECT e.employee_id,
	e.first_name,
	e.last_name,
	d.name
FROM employees e
	JOIN departments d ON d.department_id = e.department_id
WHERE d.name = 'Sales'
ORDER BY e.employee_id DESC;