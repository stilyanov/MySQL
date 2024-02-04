CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
    RETURNS DECIMAL(10, 2)
    READS SQL DATA
BEGIN
    DECLARE result DECIMAL(10, 2);
    SET result := (SELECT AVG(sc.grade)
                   FROM courses c
                            JOIN students_courses sc ON c.id = sc.course_id
                            JOIN students s ON sc.student_id = s.id
                   WHERE s.is_graduated = 1
                     AND c.name = course_name
                   GROUP BY c.name);
    RETURN result;
END;