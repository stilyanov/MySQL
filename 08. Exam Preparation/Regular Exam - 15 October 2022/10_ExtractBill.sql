CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
    RETURNS DECIMAL(10, 2)
    DETERMINISTIC
BEGIN
    DECLARE total_price DECIMAL(10, 2);
    SET total_price := (SELECT SUM(p.price)
                        FROM clients c
                        JOIN orders_clients oc ON c.id = oc.client_id
                        JOIN orders o ON oc.order_id = o.id
                        JOIN orders_products op ON o.id = op.order_id
                        JOIN products p ON op.product_id = p.id
                        WHERE CONCAT(first_name, ' ', last_name) = full_name);
    RETURN total_price;
END;