USE `property_booking`;

--
-- Sample data for the `User` table
--
-- Note: 'password_hash' values are placeholders. In a real application, you would use a secure hashing function.
INSERT INTO `User` (`first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`) VALUES
('Alice', 'Smith', 'alice.smith@example.com', 'hashed_password_1', '555-123-4567', 'host'),
('Bob', 'Johnson', 'bob.johnson@example.com', 'hashed_password_2', '555-234-5678', 'guest'),
('Charlie', 'Brown', 'charlie.brown@example.com', 'hashed_password_3', '555-345-6789', 'guest');


--
-- Sample data for the `Property` table
--
-- Note: 'host_id' references the `user_id` of a host user.
-- We are using the user 'Alice' (assuming user_id 1) as the host for these properties.
INSERT INTO `Property` (`host_id`, `name`, `description`, `location`, `pricepernight`) VALUES
(1, 'Cozy Apartment in City Center', 'A charming one-bedroom apartment right in the heart of the city.', 'New York, NY', 150.00),
(1, 'Lakeside Cabin Retreat', 'Escape the city and relax at this peaceful cabin with stunning lake views.', 'Lake Placid, NY', 250.00),
(1, 'Modern Studio Loft', 'Stylish and contemporary studio loft with all the amenities you need.', 'San Francisco, CA', 180.00);


--
-- Sample data for the `Booking` table
--
-- Note: `user_id` references a guest user and `property_id` references a property.
-- We are using 'Bob' (user_id 2) and 'Charlie' (user_id 3) as guests.
-- We are using 'Cozy Apartment' (property_id 1) and 'Lakeside Cabin' (property_id 2).
INSERT INTO `Booking` (`user_id`, `property_id`, `amount`, `payment_method`, `status`) VALUES
(2, 1, 450.00, 'credit_card', 'confirmed'),
(3, 2, 750.00, 'paypal', 'pending');
--
