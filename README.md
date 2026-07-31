# Medical Record App

A Flutter application for managing medical records, built with a **Feature-First + Clean Architecture** approach.

---

## 🏗️ Tech Stack & Dependencies

- **Framework:** [Flutter](https://flutter.dev) (Dart SDK `>=3.8.0 <4.0.0`)
- **State Management:** [Flutter Riverpod](https://riverpod.dev) (`^2.6.1`)
- **Routing:** [GoRouter](https://pub.dev/packages/go_router) (`^16.0.0`)
- **HTTP Client:** [Dio](https://pub.dev/packages/dio) (`^5.9.0`)
- **Dependency Injection:** [GetIt](https://pub.dev/packages/get_it) (`^8.2.0`)
- **Local Storage:** [SharedPreferences](https://pub.dev/packages/shared_preferences) (`^2.5.3`)
- **Code Generation & Data Models:** [Freezed](https://pub.dev/packages/freezed) & [Json Serializable](https://pub.dev/packages/json_serializable)

---

## 🏛️ Architecture Overview

The project follows **Clean Architecture** paired with a **Feature-First** package structure:

```text
lib/
├── app.dart                        # Root MaterialApp configuration with Router & Theme
├── main.dart                       # App entry point & DI initialization
│
├── core/                           # Core utilities & cross-cutting concerns
│   ├── constants/                  # App constants & API keys configuration
│   ├── di/                         # Service Locator (GetIt) registration
│   ├── error/                      # Failure models, Result wrapper, & Exception handling
│   ├── network/                    # Dio Client & Interceptors (Auth, Logger)
│   ├── router/                     # GoRouter route declarations & configuration
│   ├── storage/                    # Local storage wrappers (SharedPreferences)
│   └── theme/                      # App color palette & typography themes
│
├── features/                       # Feature modules (Feature-First)
│   ├── auth/                       # Authentication Feature
│   │   ├── data/                   # Datasources, Data Models, & Repository Impl
│   │   ├── domain/                 # UseCases & Abstract Repository Interfaces
│   │   └── presentation/           # Controllers (Riverpod Notifiers), States, & UI Pages
│   │
│   ├── dashboard/                  # Dashboard Feature
│   └── splash/                     # Splash Feature
│
└── shared/                         # Reusable shared widgets & domain primitives
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (`>=3.8.0`)
- Android Studio / Xcode for mobile emulators

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd medical_record_app
   ```

2. **Configure API Keys:**
   Create `lib/core/constants/app_keys.dart` based on `lib/core/constants/app_keys.dart.example`:
   ```dart
   // lib/core/constants/app_keys.dart
   abstract final class AppKeys {
     AppKeys._();

     static const String xApiKey = 'YOUR_API_KEY_HERE';
   }
   ```
   > ⚠️ `app_keys.dart` contains sensitive credentials and is ignored by `.gitignore`. Do not commit this file.

3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run Code Generation:**
   Generate Freezed state models and JSON serializable classes:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Analyze Codebase:**
   Ensure zero static analysis errors:
   ```bash
   flutter analyze
   ```

6. **Run the Application:**
   ```bash
   flutter run
   ```

---

## 🛠️ Handy Commands

| Task | Command |
|---|---|
| Fetch packages | `flutter pub get` |
| Run code generation | `flutter pub run build_runner build` |
| Watch code generation | `flutter pub run build_runner watch` |
| Static analysis | `flutter analyze` |
| Run app | `flutter run` |

---

## 🔒 Security Notice

Never push secret API keys or private keys into version control. Ensure all environment secrets reside in git-ignored files such as `lib/core/constants/app_keys.dart`.
