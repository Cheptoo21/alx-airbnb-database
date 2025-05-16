# 🌱 Database Seeding - Airbnb Clone

This folder contains SQL statements to populate the Airbnb database with sample data.

## 📄 Files

- `seed.sql`: Contains `INSERT` statements for each table.
- `README.md`: This file.

## 🌍 Sample Data Coverage

| Table      | Sample Count | Notes                                |
| ---------- | ------------ | ------------------------------------ |
| users      | 3            | Guests and one host                  |
| properties | 2            | Hosted by the host                   |
| bookings   | 2            | Linked to users and properties       |
| payments   | 1            | For one confirmed booking            |
| reviews    | 2            | Ratings and feedback by users        |
| messages   | 2            | Communication between guest and host |

## 🧪 Sample Use Case

- Alice (guest) books the _Seaside Villa_ owned by Bob (host) and leaves a 5-star review.
- Clara (guest) books the _Mountain Cabin_ and leaves a 4-star review.
- Alice sends Bob a thank-you message and gets a reply.

## 🧾 Running the Seed Script

Ensure you’ve already run `schema.sql` first. Then:

```bash
psql -U username -d airbnb_db -f seed.sql
```
