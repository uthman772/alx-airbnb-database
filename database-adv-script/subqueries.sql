SELECT b.id AS booking_id, u.name AS user_name, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT b.booking_id, b.start_date, u.first_name, u.last_name
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id;

SELECT u.name AS user_name, b.id AS booking_id, b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
SELECT id, name
FROM properties
WHERE id IN (
  SELECT property_id
  FROM reviews
  GROUP BY property_id
  HAVING AVG(rating) > 4.0
);

SELECT u.id, u.name
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM bookings b
  WHERE b.user_id = u.id
) > 3;


SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id;

