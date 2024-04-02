CREATE PROCEDURE udp_happy_hour(givenType VARCHAR(50))
BEGIN
    UPDATE products
    SET price = price * 0.8
    WHERE price >= 10.00 AND type = givenType;
END;