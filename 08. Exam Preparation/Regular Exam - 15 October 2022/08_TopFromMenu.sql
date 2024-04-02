SELECT p.id,
       `name`,
       COUNT(op.order_id) AS `count`
FROM products p
         JOIN orders_products op ON p.id = op.product_id
GROUP BY p.id
HAVING `count` >= 5
ORDER BY `count` DESC, `name`;