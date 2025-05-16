# 📊 Airbnb Database Normalization (3NF)

## 🎯 Objective

Ensure the Airbnb-like database schema follows the principles of **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

## 🔍 What is Normalization?

**Normalization** is a step-by-step process of organizing the attributes and tables of a relational database to eliminate redundancy and improve data integrity. The first three normal forms are:

- **1NF (First Normal Form):**
  - Eliminate repeating groups and ensure atomicity.
- **2NF (Second Normal Form):**
  - Remove partial dependencies on composite keys.
- **3NF (Third Normal Form):**
  - Eliminate transitive dependencies.

## ✅ Step-by-Step Normalization

### 1️⃣ First Normal Form (1NF)

**All tables meet 1NF**:

- All attributes are **atomic**.
- Each record is uniquely identifiable via a **primary key (UUID)**.
- No repeating groups or nested fields.

✅ **Status: Achieved**

### 2️⃣ Second Normal Form (2NF)

Since all primary keys are **single-column UUIDs**, there are no **composite keys**. Therefore, no partial dependencies can exist.

✅ **Status: Achieved**

---

### 3️⃣ Third Normal Form (3NF)

Analyzing each table:

#### 🧍 User

- All attributes are fully dependent on `user_id`.
- No transitive dependencies.

#### 🏠 Property

- `host_id` is a foreign key to `User.user_id`, valid and normalized.
- Other fields depend only on `property_id`.

#### 📅 Booking

- Fields like `start_date`, `end_date`, `total_price`, and `status` depend directly on `booking_id`.
- `property_id` and `user_id` are valid foreign keys.

#### 💳 Payment

- Fully dependent on `payment_id`.
- `booking_id` is a foreign key, and no derived attributes are stored.

#### 🌟 Review

- Attributes are dependent on `review_id`.
- `rating` and `comment` describe a user’s feedback on a property.

#### 💬 Message

- `sender_id` and `recipient_id` both reference `User`.
- Message body and timestamp are dependent solely on `message_id`.

✅ **Status: Fully Normalized to 3NF**

## 🛠️ Adjustments Required

**None.** The current schema is well-designed and adheres to 3NF principles:

- No redundant data.
- Clear primary and foreign key usage.
- All attributes exhibit full functional dependency.

## ✅ Final Verdict

The Airbnb database schema **is in Third Normal Form (3NF)**. This structure ensures data consistency, minimizes redundancy, and supports scalable query operations.
