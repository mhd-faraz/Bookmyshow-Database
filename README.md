
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
IDNameCityAddress1PVR NexusDelhiNexus Mall, Delhi2IMAX CinepolisNoidaSector 15, Noida3Cinepolis OrbitsGurgaonOrbits Mall, Gurgaon

---

### 2. MOVIE TABLE
Movie details and metadata

| Column | Type | Constraints | Description |
|--------|------|-------------|------------|
| movie_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique ID |
| movie_name | VARCHAR(150) | NOT NULL, UNIQUE | Movie title |
| language | VARCHAR(50) | NOT NULL | Language |
| format | VARCHAR(50) | - | Format (2D/3D) |
| genre | VARCHAR(50) | - | Genre type |
| duration_minutes | INT | - | Duration |

**Sample Data:**
IDNameLanguageFormat1DasaraTelugu2D2Kisi Ka Bhai Kisi Ki JaanHindi2D3Tu Jhoothi Main MakkaarHindi2D4Avatar: The Way of WaterEnglish3D

---

### 3. SCREEN TABLE
Cinema screens within theatres

| Column | Type | Constraints | Description |
|--------|------|-------------|------------|
| screen_id | INT | PRIMARY KEY | Unique ID |
| theatre_id | INT | FOREIGN KEY | Parent theatre |
| screen_number | VARCHAR(50) | - | Screen name |
| capacity | INT | - | Total seats |

---

### 4. SHOW_TIMING TABLE
Movie show schedule

| Column | Type | Constraints | Description |
|--------|------|-------------|------------|
| show_id | INT | PRIMARY KEY | Unique ID |
| movie_id | INT | FOREIGN KEY | Movie reference |
| theatre_id | INT | FOREIGN KEY | Theatre reference |
| screen_id | INT | FOREIGN KEY | Screen reference |
| show_date | DATE | - | Show date |
| show_time | TIME | - | Show time |
| price | DECIMAL(8,2) | - | Ticket price |

---

## ✅ Normalization
- 1NF ✅ | 2NF ✅ | 3NF ✅ | BCNF ✅

## 📝 Queries
- **P1:** Shows on given date at given theatre
- **P2:** Advanced filtering by language
- **SQL Files:** schema.sql, sample_data.sql, queries.sql

