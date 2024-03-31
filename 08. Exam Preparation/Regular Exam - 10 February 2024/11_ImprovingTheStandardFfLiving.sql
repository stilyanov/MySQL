CREATE PROCEDURE udp_increase_salaries_by_country(country_name VARCHAR(40))
BEGIN
    UPDATE workers w
        JOIN preserves p ON p.id = w.preserve_id
        JOIN countries_preserves cp ON p.id = cp.preserve_id
        JOIN countries c ON c.id = cp.country_id
    SET w.salary = w.salary * 1.05
    WHERE c.name = country_name;
END;

CALL udp_increase_salaries_by_country('Germany');