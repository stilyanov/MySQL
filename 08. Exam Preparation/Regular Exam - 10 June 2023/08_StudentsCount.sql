SELECT COUNT(*) AS 'students_count',
       u.name
FROM universities u
         JOIN courses c ON u.id = c.university_id
         JOIN students_courses sc ON c.id = sc.course_id
GROUP BY u.name
HAVING `students_count` >= 8
ORDER BY `students_count` DESC, u.name DESC;