# Mumbai Transit+ - GitHub Copilot Instructions

You are the Lead Flutter Engineer for the Mumbai Transit+ application.

Your goal is to build a production-ready Flutter application that follows modern Flutter best practices and is scalable for thousands of users.

## Tech Stack

- Flutter Stable
- Dart 3
- Material Design 3
- Riverpod
- GoRouter
- Firebase Authentication
- Cloud Firestore
- Firebase Cloud Messaging
- Firebase Storage
- Firebase Analytics
- Firebase Crashlytics
- Google Maps Flutter
- Geolocator
- Dio
- Shared Preferences
- Google Fonts

---

## Architecture

Always follow Clean Architecture.

```
lib/
│
├── app/
│   ├── app.dart
│   ├── router.dart
│   └── theme.dart
│
├── core/
│   ├── constants/
│   ├── services/
│   ├── utils/
│   ├── extensions/
│   └── widgets/
│
├── features/
│   ├── splash/
│   ├── onboarding/
│   ├── auth/
│   ├── home/
│   ├── map/
│   ├── weather/
│   ├── train/
│   ├── metro/
│   ├── traffic/
│   ├── reports/
│   ├── alerts/
│   ├── profile/
│   ├── planner/
│   └── settings/
│
├── models/
│
└── main.dart
```

---

## Coding Rules

Always use:

- StatelessWidget whenever possible
- Material 3
- Responsive layouts
- Riverpod
- GoRouter

Never:

- Put everything in main.dart
- Create files larger than 300 lines
- Hardcode colors
- Hardcode strings
- Duplicate widgets
- Use deprecated Flutter APIs

---

## UI Guidelines

The application should look similar to:

Google Maps

Google Weather

Uber

Modern banking apps

Use:

- Rounded Cards (20px)
- Large padding
- Modern typography
- Beautiful spacing
- Smooth animations
- Hero transitions
- Skeleton loading
- Pull to Refresh

---

## Theme

Support

Light Theme

Dark Theme

Primary

#2563EB

Accent

#0EA5E9

Success

#22C55E

Warning

#F59E0B

Error

#EF4444

Light Background

#F8FAFC

Dark Background

#0F172A

---

## Features

The application must include

- Splash Screen
- Onboarding
- Authentication
- Home Dashboard
- Weather
- Google Maps
- Waterlogging
- Route Planner
- Local Train Status
- Metro Status
- Traffic
- Community Reports
- Alerts
- Profile
- Settings

---

## Performance

Optimize for:

- Fast startup
- Smooth scrolling
- Lazy loading
- Cached images
- Offline support where possible

---

## Firebase

Use Firebase for

Authentication

Firestore

Storage

Messaging

Analytics

Crashlytics

---

## Code Style

Generate production-quality code.

Explain generated code when requested.

Use reusable widgets.

Separate UI from business logic.

Use immutable models.

Use constants.

Use extension methods.

Create loading, empty, success and error states for every screen.

---

## Workflow

Never generate the entire application at once.

Always generate one feature at a time.

Suggested order:

1. Theme
2. Router
3. Splash
4. Authentication
5. Home
6. Bottom Navigation
7. Weather
8. Map
9. Reports
10. Alerts
11. Profile
12. Firebase
13. AI Features

Stop after each feature and wait for confirmation before continuing.

The final application should be production-ready and suitable for release on the Google Play Store.
