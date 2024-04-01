INSERT INTO airplanes (model, passengers_capacity, tank_capacity, cost)
SELECT CONCAT(REVERSE(first_name), '797'),
       LENGTH(last_name) * 17,
       id * 790,
       LENGTH(first_name) * 50.6
FROM passengers
WHERE id <= 5;