SELECT CONCAT(first_name, ' ', last_name) AS 'full_name',
       SUBSTRING(email, 2, 10)            AS 'username',
       REVERSE(phone)                     AS 'password'
FROM students
         LEFT JOIN students_courses sc ON students.id = sc.student_id
WHERE sc.course_id IS NULL
ORDER BY `password` DESC;