# QUICK FIX - Backend Setup

## Problema: 404 Not Found / Format Exception

Ang backend files ay **HINDI PA NAKA-COPY** sa XAMPP htdocs folder.

## Solution - Manual Copy:

### Step 1: I-open ang Finder

1. Press `Cmd + Shift + G`
2. Type: `/Applications/XAMPP/htdocs`
3. Press Enter

### Step 2: Gumawa ng Folder

1. Right-click sa htdocs folder
2. Click "New Folder"
3. Name: `fitness_tracking`
4. I-open ang `fitness_tracking` folder
5. Gumawa ng another folder: `backend`

### Step 3: I-copy ang Backend Files

1. Bumalik sa project folder: `Documents/fitness_tracking/backend/`
2. Select ALL files:
   - config.php
   - register.php
   - login.php
   - logout.php
   - log_exercise.php
   - log_wellness.php
   - log_nutrition.php
   - submit_feedback.php
   - log_study_balance.php
   - log_academic.php
   - log_commute.php
   - create_post.php
   - get_posts.php
3. Copy (Cmd + C)
4. Paste sa `/Applications/XAMPP/htdocs/fitness_tracking/backend/`

### Step 4: I-verify

1. Open browser
2. Go to: `http://localhost/fitness_tracking/backend/register.php`
3. Dapat makita: `{"success":false,"message":"Student number and password required"}`

### Step 5: I-test ang App

1. Stop ang Flutter app
2. Run ulit: `flutter run`
3. Try mag-register

---

## Alternative: Using Terminal

```bash
cd ~/Documents/fitness_tracking
./setup_backend.sh
```

(Type your Mac password when asked)

---

## Kung may Permission Error:

```bash
sudo chmod -R 755 /Applications/XAMPP/htdocs/fitness_tracking
```

---

## Final Check:

✅ XAMPP Apache is running (GREEN)
✅ XAMPP MySQL is running (GREEN)
✅ Backend files nasa `/Applications/XAMPP/htdocs/fitness_tracking/backend/`
✅ Database `fitness_tracking_db` created
✅ Browser shows JSON response (not 404)
