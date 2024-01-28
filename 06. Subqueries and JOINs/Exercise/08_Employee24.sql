SELECT e.employee_id,
	e.first_name,
	IF(YEAR(p.start_date) >= '2005', NULL, p.name) AS 'project_name'
FROM employees e
	JOIN employees_projects ep ON ep.employee_id = e.employee_id
	JOIN projects p ON p.project_id = ep.project_id
WHERE ep.employee_id = 24
ORDER BY p.name;