CREATE FUNCTION udf_customer_products_count(firstName VARCHAR(30))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(c.id)
                   FROM customers c
                            JOIN orders o ON c.id = o.customer_id
                            JOIN orders_products op ON o.id = op.order_id
                   WHERE c.first_name = firstName);
    RETURN result;
END;