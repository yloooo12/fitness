# Connection Error Fix Guide

## Error: "Connection refused, port = 60682"

Ang error na ito ay nangyayari dahil:
1. Hindi running ang Apache sa XAMPP
2. Mali ang URL/IP address
3. Hindi accessible ang localhost mula sa emulator/device

## Solutions:

### 1. Check kung Running ang XAMPP

1. I-open ang XAMPP Control Panel
2. I-check kung **GREEN** ang Apache at MySQL
3. Kung hindi, i-click ang **Start** button

### 2. I-update ang API URL base sa Device

**File**: `lib/services/api_service.dart`

#### Para sa Android Emulator:
```dart
static const String baseUrl = 'http://10.0.2.2/fitness_tracking/backend';
```

#### Para sa iOS Simulator:
```dart
static const String baseUrl = 'http://localhost/fitness_tracking/backend';
```

#### Para sa Physical Device (Phone/Tablet):
```dart
// Replace with your computer's IP address
static const String baseUrl = 'http://192.168.1.5/fitness_tracking/backend';
```

### 3. Paano Kunin ang IP Address ng Computer

#### Windows:
1. Open Command Prompt (CMD)
2. Type: `ipconfig`
3. Hanapin ang "IPv4 Address" (example: 192.168.1.5)

#### Mac:
1. Open Terminal
2. Type: `ipconfig getifaddr en0`
3. Makikita ang IP address (example: 192.168.1.5)

### 4. I-verify kung Working ang Backend

1. I-open ang browser
2. Pumunta sa: `http://localhost/fitness_tracking/backend/register.php`
3. Dapat makita: `{"success":false,"message":"Student number and password required"}`
4. Kung nakita mo yan, **WORKING** ang backend!

### 5. Para sa Physical Device

**IMPORTANTE**: Dapat same WiFi ang computer at phone!

1. Kunin ang IP address ng computer (Step 3)
2. I-update ang `api_service.dart`:
   ```dart
   static const String baseUrl = 'http://YOUR_IP_HERE/fitness_tracking/backend';
   ```
3. Example:
   ```dart
   static const String baseUrl = 'http://192.168.1.5/fitness_tracking/backend';
   ```

### 6. I-test Ulit

1. Stop ang app
2. Run ulit: `flutter run`
3. Try mag-register

## Quick Checklist:

- [ ] XAMPP Apache is running (GREEN)
- [ ] XAMPP MySQL is running (GREEN)
- [ ] Backend files nasa `htdocs/fitness_tracking/backend/`
- [ ] Database `fitness_tracking_db` ay naka-create na
- [ ] Tama ang IP address sa `api_service.dart`
- [ ] Same WiFi ang computer at device (kung physical device)

## Common Ports:

- Apache default port: **80**
- MySQL default port: **3306**

Kung may error pa rin, check kung may ibang program na gumagamit ng port 80 (like Skype, IIS, etc.)
