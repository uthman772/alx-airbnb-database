SELECT user_id, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY user_id;


SELECT property_id,
       COUNT(*) OVER (PARTITION BY property_id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) OVER (PARTITION BY property_id) DESC) AS booking_rank
FROM Bookings;

