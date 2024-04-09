SELECT i.first_name,
       i.last_name,
       COUNT(iss.student_id) AS students_count,
       c.name
FROM instructors i
         JOIN instructors_students iss ON i.id = iss.instructor_id
         JOIN instructors_driving_schools ids ON i.id = ids.instructor_id
         JOIN driving_schools ds ON ids.driving_school_id = ds.id
         JOIN cities c ON ds.city_id = c.id
GROUP BY iss.instructor_id, i.first_name, i.last_name, c.name
HAVING students_count > 1
ORDER BY students_count DESC, i.first_name;