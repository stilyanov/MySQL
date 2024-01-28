SELECT e2.employee_id,
	e2.first_name,
	e2.manager_id,
		(SELECT first_name FROM employees e
		WHERE e2.manager_id = e.employee_id
		LIMIT 1) AS 'manager_name'
FROM employees e2
WHERE manager_id IN (3, 7)
ORDER BY first_name;