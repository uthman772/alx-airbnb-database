SELECT b.id AS booking_id, u.name AS user_name, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT b.booking_id, b.start_date, u.first_name, u.last_name
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id;

SELECT p.id AS property_id, p.name AS property_name, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
