CREATE PROCEDURE udp_find_school_by_car(carBrand VARCHAR(20))
BEGIN
    SELECT ds.name, ROUND(AVG(ds.average_lesson_price), 2) AS `average_lesson_price`
    FROM driving_schools ds
             JOIN cars c ON ds.car_id = c.id
    WHERE c.brand = carBrand
    GROUP BY ds.name
    ORDER BY `average_lesson_price` DESC;
END;