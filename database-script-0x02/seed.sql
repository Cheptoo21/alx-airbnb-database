-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hash2', '2345678901', 'host', CURRENT_TIMESTAMP),
  ('33333333-3333-3333-3333-333333333333', 'Clara', 'Brown', 'clara@example.com', 'hash3', '3456789012', 'guest', CURRENT_TIMESTAMP);

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'A cozy villa by the beach.', 'Mombasa', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'A warm cabin in the mountains.', 'Naivasha', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- BOOKINGS
INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '2025-06-01', '2025-06-05', 600.00, 'confirmed', CURRENT_TIMESTAMP),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '33333333-3333-3333-3333-333333333333', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '2025-07-10', '2025-07-12', 240.00, 'pending', CURRENT_TIMESTAMP);

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 600.00, CURRENT_TIMESTAMP, 'credit_card');

-- REVIEWS
INSERT INTO reviews (review_id, user_id, property_id, rating, comment, created_at)
VALUES
  ('ddddddd1-dddd-dddd-dddd-dddddddddddd1', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 5, 'Amazing experience at the villa!', CURRENT_TIMESTAMP),
  ('ddddddd2-dddd-dddd-dddd-dddddddddddd2', '33333333-3333-3333-3333-333333333333', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 4, 'Nice cabin but it was a bit cold at night.', CURRENT_TIMESTAMP);

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I loved staying at your villa!', CURRENT_TIMESTAMP),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Thank you! Come again anytime.', CURRENT_TIMESTAMP);
