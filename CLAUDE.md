# Calorie Estimator (final-year project)

Flutter app that recognises food in a photo and estimates calories. Source of truth for requirements: the project report (Chapter 3). Source of truth for UI: the Claude Design canvas at https://claude.ai/artifact/QgbSShJHY5fPfmmKzLDUi4 (12 screens: Welcome, Auth, Profile setup, Home, Capture, Meal details, Analysing, Result, Edit item, Couldn't analyse, History, Profile & settings).

The app is being built **one feature at a time**. Backend does not exist yet; build frontend against repository interfaces.

## Stack

- State: Riverpod 3 with code generation (`@riverpod`, `riverpod_generator`)
- Network: Dio + Retrofit; models with freezed + json_serializable
- Navigation: go_router (`lib/app/router`)
- Errors: `fpdart` `Either<Failure, T>` (`FutureEither<T>`)
- UI: `package:material_ui/material_ui.dart` — **not** `package:flutter/material.dart` (Material moved out of the SDK in this Flutter version; mixing the two breaks theme types)

## Architecture: feature-first, clean architecture, MVVM

```
lib/
  main.dart              # bootstraps prefs, ProviderScope
  app/                   # composition root: App widget, router (may import features)
  core/                  # feature-agnostic; must never import from features/
    config/ constants/ error/ network/ storage/ theme/ usecase/ utils/ widgets/
  features/<feature>/
    data/
      datasources/       # Retrofit API services (remote), local sources
      models/            # freezed DTOs with fromJson/toJson + toEntity()
      repositories/      # *RepositoryImpl — wraps calls in core/error `guard()`
    domain/
      entities/          # plain immutable business objects (no JSON)
      repositories/      # abstract interfaces
      usecases/          # one class per action, implements UseCase<T, Params>
    presentation/
      view_models/       # @riverpod Notifier/AsyncNotifier — the ViewModel
      views/             # screens (ConsumerWidget) — the View
      widgets/           # feature-private widgets
```

Features: `onboarding`, `auth`, `profile`, `home`, `food_analysis`, `history`, `settings`.

Rules:
- Dependency direction: presentation → domain ← data. Domain imports nothing from data or Flutter UI.
- Views only talk to view models; view models only call use cases.
- Data sources throw (Dio / `AppException`); repository impls return `FutureEither` via `guard()`; view models map `Failure` to UI state.
- Providers for each layer live next to the class they build (e.g. `authRepositoryProvider` in the repository impl file).
- Use package imports (`package:calorie_estimator/...`), single quotes.
- Shared, reusable widgets go in `core/widgets`; colours/spacing/type only from `core/theme` (`AppColors`, `AppSpacing`, `AppRadii`, `AppSizes`, `Theme.of(context).textTheme`).
- Calorie values are always presented as estimates (`AppConstants.estimateDisclaimer`).

## Commands

```sh
dart run build_runner build      # after changing @riverpod / @freezed / @RestApi files
dart run build_runner watch
flutter analyze                  # includes riverpod_lint
flutter test
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8000/api/v1
```
