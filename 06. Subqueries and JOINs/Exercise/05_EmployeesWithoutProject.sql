SELECT e.employee_id,
	e.first_name
FROM employees e
	LEFT JOIN employees_projects ep ON ep.employee_id = e.employee_id 
WHERE ep.project_id IS NULL
ORDER BY e.employee_id DESC 
LIMIT 3;