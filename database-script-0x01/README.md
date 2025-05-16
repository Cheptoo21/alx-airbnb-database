# 🏗️ Database Schema - Airbnb Clone

This folder contains the SQL schema definition for the Airbnb-like application database.

## 📄 Files

- `schema.sql`: Contains SQL `CREATE TABLE` statements with all required constraints, foreign keys, and indexes.
- `README.md`: This file — explains the schema structure and usage.

## 🧱 Tables Overview

### 1. `users`

Stores user information for guests, hosts, and admins.

### 2. `properties`

Represents properties listed by hosts.

### 3. `bookings`

Tracks bookings made by guests for specific properties.

### 4. `payments`

Handles payment records for bookings.

### 5. `reviews`

Allows users to leave reviews and ratings for properties.

### 6. `messages`

Stores messages between users (guests and hosts).

## 🔐 Constraints and Indexes

- All primary keys are UUIDs.
- Foreign key constraints enforce referential integrity.
- ENUMs ensure controlled values for roles, statuses, and payment methods.
- Indexes improve query performance on frequently searched columns (e.g., `email`, `property_id`, `booking_id`).

## ✅ Compliance

This schema adheres to:

- **3NF normalization**
- Proper indexing
- Scalable relationships

## 📌 Usage

Run the script in your SQL environment:

```bash
psql -U username -d airbnb_db -f schema.sql
```
