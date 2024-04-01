SELECT c.name, c.currency, COUNT(fp.passenger_id) AS booked_tickets
FROM countries c
         JOIN flights f ON c.id = f.destination_country
         JOIN flights_passengers fp ON f.id = fp.flight_id
GROUP BY c.id
HAVING booked_tickets >= 20
ORDER BY booked_tickets DESC;