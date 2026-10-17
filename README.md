# Bite

Final-year project: *The Design and Implementation of an AI-Based Food Recognition Application for Automated Calorie Estimation* — Chidiebube Praise Iroezindu, Department of Computer Science, University of Port Harcourt.

Take a photo of a meal, get the recognised food items and an estimated calorie count, and keep a history of what you ate against a personal daily calorie reference.

## Getting started

```sh
flutter pub get
dart run build_runner build
flutter run
```

Point the app at a backend with `--dart-define=API_BASE_URL=<url>` (default `http://localhost:8000/api/v1`; use `http://10.0.2.2:8000/api/v1` from the Android emulator).

See [CLAUDE.md](CLAUDE.md) for the architecture and conventions.
