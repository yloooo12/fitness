# DATABASE SETUP - KAILANGAN GAWIN!

## ❌ Error: Unknown database 'fitness_tracking_db'

Ang database ay **HINDI PA NAKA-CREATE**!

---

## ✅ Solution - I-create ang Database:

### Method 1: Using phpMyAdmin (RECOMMENDED)

1. **I-open ang browser**
   - Go to: `http://localhost/phpmyadmin`

2. **I-create ang database**
   - Click **"New"** sa left sidebar
   - Database name: `fitness_tracking_db`
   - Collation: `utf8mb4_general_ci`
   - Click **"Create"**

3. **I-import ang SQL file**
   - Click ang `fitness_tracking_db` database
   - Click **"SQL"** tab sa top
   - I-open ang file: `database/create_database.sql`
   - Copy ALL content
   - Paste sa SQL box
   - Click **"Go"**

4. **I-verify**
   - Click `fitness_tracking_db` sa left
   - Dapat makita mo ang 13 tables:
     - students
     - exercises
     - daily_stats
     - weekly_points
     - user_feedback
     - wellness_data
     - nutrition_data
     - app_usage_log
     - study_balance
     - academic_correlation
     - commute_tracker
     - social_posts

---

### Method 2: Using Terminal

```bash
# Login to MySQL
/Applications/XAMPP/bin/mysql -u root -p

# Create database
CREATE DATABASE fitness_tracking_db;

# Exit
exit;

# Import SQL file
/Applications/XAMPP/bin/mysql -u root fitness_tracking_db < database/create_database.sql
```

---

## ✅ After Creating Database:

1. **I-restart ang Flutter app**
   ```bash
   flutter run
   ```

2. **Try mag-register**
   - Student Number: `2025-001`
   - Fill in all fields
   - Click Register

3. **I-check sa phpMyAdmin**
   - Go to `students` table
   - Click **"Browse"**
   - Dapat makita mo ang bagong student!

---

## Final Checklist:

- [x] XAMPP Apache is running (GREEN)
- [x] XAMPP MySQL is running (GREEN)
- [x] Backend files nasa `/Applications/XAMPP/htdocs/fitness_tracking/backend/`
- [ ] **Database `fitness_tracking_db` created** ← GAWIN MO TO!
- [ ] **13 tables created** ← GAWIN MO TO!
- [ ] Test registration

---

## Kung may error pa rin:

Check ang `backend/config.php`:
```php
$host = 'localhost';
$dbname = 'fitness_tracking_db';  // ← Dapat tama ang spelling
$username = 'root';
$password = '';  // ← Usually blank sa XAMPP
```
