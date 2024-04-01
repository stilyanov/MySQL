CREATE FUNCTION udf_count_flights_from_country(countryName VARCHAR(50))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(name)
                   FROM countries c
                            JOIN flights f ON c.id = f.departure_country
                   GROUP BY name
                   HAVING name = countryName);
    RETURN result;
END;