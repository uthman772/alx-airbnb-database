SELECT b.id AS booking_id, u.name AS user_name, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT b.booking_id, b.start_date, u.first_name, u.last_name
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id;

