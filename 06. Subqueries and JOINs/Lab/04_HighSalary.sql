SELECT COUNT(*) AS 'count'
FROM employees e
WHERE salary > (
	SELECT AVG(salary) FROM employees e2  
);