# Quick Integration Guide - Lahat ng Screens

## Mga Na-integrate na:
✅ Register Screen - `ApiService.register()`
✅ Login Screen - `ApiService.login()`
✅ Exercise Log Screen - `ApiService.logExercise()`

## Kailangan Pa I-integrate:

### 1. Wellness Screen
**File**: `lib/screens/wellness_screen.dart`
**I-add sa save button**:
```dart
await ApiService.logWellness(
  mood: selectedMood,
  stressLevel: stressLevel,
  journal: journalController.text,
);
```

### 2. Nutrition Screen
**File**: `lib/screens/nutrition_screen.dart`
**I-add sa save button**:
```dart
await ApiService.logNutrition(
  waterIntake: waterGlasses,
  caloriesConsumed: totalCalories,
  mealLog: mealLog,
);
```

### 3. Feedback Screen
**File**: `lib/screens/feedback_screen.dart`
**I-add sa submit button**:
```dart
await ApiService.submitFeedback(
  usabilityRating: usabilityRating,
  designRating: designRating,
  helpfulnessRating: helpfulnessRating,
  comments: commentsController.text,
);
```

### 4. Study Balance Screen
**File**: `lib/screens/study_balance_screen.dart`
**I-add sa onAdd callback**:
```dart
await ApiService.logStudyBalance(
  studyHours: _studyHours,
  exerciseHours: _exerciseHours,
);
```

### 5. Academic Correlation Screen
**File**: `lib/screens/academic_correlation_screen.dart`
**I-add sa save button**:
```dart
await ApiService.logAcademicData(
  weekNumber: currentWeek,
  exerciseHours: exerciseHours,
  gradeAverage: gradeAverage,
);
```

### 6. Commute Tracker Screen
**File**: `lib/screens/commute_tracker_screen.dart`
**I-add sa log button**:
```dart
await ApiService.logCommute(
  transportMode: selectedMode,
  durationMinutes: duration,
  distance: distance,
);
```

### 7. Social Feed Screen
**File**: `lib/screens/social_feed_screen.dart`
**I-add sa post button**:
```dart
await ApiService.createPost(
  content: postContent,
  workoutType: workoutType,
  duration: duration,
);
```

### 8. Profile Settings Screen (Logout)
**File**: `lib/screens/profile_settings_screen.dart`
**I-add sa logout button**:
```dart
await ApiService.logout();
UserSession.logout();
```

## Pattern na Sundin:

```dart
// 1. Import ApiService
import '../services/api_service.dart';

// 2. I-wrap ang save function sa async
void _handleSave() async {
  // existing validation code...
  
  // 3. Call API
  final result = await ApiService.logXXX(
    // parameters here
  );
  
  // 4. Show feedback
  if (result['success']) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Saved successfully!')),
    );
  }
}
```

## Testing Checklist:

Para sa bawat feature:
1. ✅ I-test sa app
2. ✅ Check sa phpMyAdmin kung nag-save
3. ✅ Verify ang data ay tama

## Common Issues:

**"Connection error"**
- Check kung running ang XAMPP
- Check ang IP address sa `api_service.dart`

**"success: false"**
- Check ang PHP error logs
- Verify ang database table structure

**Walang data sa database**
- Check kung naka-login ang user (UserSession.currentUser)
- Verify ang student_id ay tama
