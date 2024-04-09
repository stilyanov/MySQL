UPDATE driving_schools
SET average_lesson_price = average_lesson_price + 30
WHERE city_id IN (SELECT DISTINCT id FROM cities)
  AND night_time_driving = 1;