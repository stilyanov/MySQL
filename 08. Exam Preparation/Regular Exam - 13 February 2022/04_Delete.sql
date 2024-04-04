DELETE customers
FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id
                 FROM orders);