CREATE TABLE Bookings (
  booking_id INT,
  user_id INT,
  property_id INT,
  start_date DATE,
  end_date DATE
)
PARTITION BY RANGE (YEAR(start_date)) (
  PARTITION p2023 VALUES LESS THAN (2024),
  PARTITION p2024 VALUES LESS THAN (2025),
  PARTITION p2025 VALUES LESS THAN (2026)
);

