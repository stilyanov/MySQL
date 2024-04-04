SELECT *
FROM reviews
WHERE (SELECT content LIKE 'My%') AND CHAR_LENGTH(content) > 61
ORDER BY rating DESC;