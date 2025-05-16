## AirBnB Clone Database - Entity-Relationship Diagram

## Table of Contents

1. [Introduction](#introduction)
2. [Entities and Primary Attributes](#entities-and-primary-attributes)
3. [Relationships](#-relationships)
4. [Constraints](#constraints)
5. [Indexing](#indexing)
6. [Summmary](#summary)

## Introduction

This document outlines database design of an airbnb clone application.The database supports core functionalities i.e user managements,property listings,bookings,payment system,message between users and user reviews.

## Entities and Primary Attributes

# User

user_id (PK), first_name, last_name, email (Unique), password_hash, phone_number, role, created_at

# Property

property_id (PK), host_id (FK to User), name, description, location, pricepernight, created_at, updated_at

# Booking

booking_id (PK), property_id (FK), user_id (FK), start_date, end_date, total_price, status, created_at

# Payment

payment_id (PK), booking_id (FK), amount, payment_date, payment_method

# Review

review_id (PK), property_id (FK), user_id (FK), rating, comment, created_at

# Message

message_id (PK), sender_id (FK to User), recipient_id (FK to User), message_body, sent_at

## 🔗 Relationships

1. User to Property: One-to-Many

- A user (host) can list multiple properties.

2. User to Booking: One-to-Many

- A user (guest) can make multiple bookings.

3. Property to Booking: One-to-Many

- A property can have multiple bookings.

4. User to Review: One-to-Many

- A user can write multiple reviews.

5. Property to Review: One-to-Many

- A property can have multiple reviews.

6. Property to Amenity: Many-to-Many

- A property can have multiple amenities, and an amenity can be associated with multiple properties.

## Constraints

# User Table

Unique constraint on email.
Non-null constraints on required fields.

# Property Table

Foreign key constraint on host_id.
Non-null constraints on essential attributes.

# Booking Table

Foreign key constraints on property_id and user_id.
status must be one of pending, confirmed, or canceled.

# Payment Table

Foreign key constraint on booking_id, ensuring payment is linked to valid bookings.

# Review Table

Constraints on rating values (1-5).
Foreign key constraints on property_id and user_id.

# Message Table

Foreign key constraints on sender_id and recipient_id.

## Indexing

- Primary Keys: Indexed automatically.
- Additional Indexes:
  - email in the User table.
  - property_id in the Property and Booking tables.
  - booking_id in the Booking and Payment tables.

## Summary

This database design for the AirBnB clone application consists of six main entities: User, Property, Booking, Payment, Review, and Message. It supports the core functionalities of the application, including:

1. User management with different roles (guest, host, admin)
2. Property listings by hosts
3. Booking management
4. Payment processing
5. Review and rating system
6. Messaging between users

The relationships between these entities are carefully designed to maintain data integrity and support efficient querying. Key features of the design include:

- UUID Primary Keys (PK) for all entities
- Unique Keys (UK) for fields like email
- Appropriate Foreign Key (FK) constraints
- Indexing strategy for performance optimization
- Timestamp tracking for created and updated records
- Enumerated types for status and role fields

This database structure provides a solid foundation for building a scalable and maintainable AirBnB clone application.
