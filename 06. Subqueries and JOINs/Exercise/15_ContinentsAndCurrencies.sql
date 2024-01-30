SELECT c.continent_code,
	c.currency_code,
	COUNT(*) AS 'currency_usage'
FROM countries c
GROUP BY c.continent_code, c.currency_code
HAVING `currency_usage` > 1
AND `currency_usage` = (
	SELECT
		COUNT(*) AS 'most_used'
	FROM countries
	WHERE continent_code = c.continent_code
	GROUP BY currency_code
	ORDER BY `most_used` DESC
	LIMIT 1)
ORDER BY c.continent_code, c.currency_code;