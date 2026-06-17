
# BookMyShow Database Assignment

## 📋 Database Overview

Complete database design for a movie ticketing system like BookMyShow.

---

## 🗂️ Tables & Attributes

### 1. THEATRE TABLE
Cinema halls information

| Column | Type | Constraints | Description |
|--------|------|-------------|------------|
| theatre_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique ID |
| theatre_name | VARCHAR(100) | NOT NULL | Cinema name |
| city | VARCHAR(50) | NOT NULL | City location |
| address | VARCHAR(255) | NOT NULL | Full address |
| phone | VARCHAR(20) | - | Contact number |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record created date |

**Sample Data:**
