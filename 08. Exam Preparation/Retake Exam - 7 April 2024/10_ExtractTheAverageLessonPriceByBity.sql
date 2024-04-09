CREATE FUNCTION udf_average_lesson_price_by_city(cityName VARCHAR(40))
    RETURNS DECIMAL(10, 2)
    DETERMINISTIC
BEGIN
    DECLARE result DECIMAL(10, 2);
    SET result := (SELECT ROUND(AVG(ds.average_lesson_price), 2)
                                 FROM cities c
                                          JOIN driving_schools ds ON c.id = ds.city_id
                                 WHERE c.name = cityName);
    RETURN result;
END;