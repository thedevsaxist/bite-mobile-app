# Scoop — calorie estimator (final-year project)

Flutter app that recognises food in a photo and estimates calories. Source of truth for requirements: the project report (Chapter 3). Source of truth for UI: the Claude Design canvas at https://claude.ai/artifact/QgbSShJHY5fPfmmKzLDUi4 (16 artboards: Welcome, Log in, Onboarding, Create account, Profile setup, Home iOS/Android, Capture, Meal details, Analysing, Result, Edit item, Couldn't analyse, History iOS/Android, Profile & settings). Re-read the relevant artboard before changing a screen — the design is still being edited.

The app is being built **one feature at a time**. Backend does not exist yet. All screens exist as UI; view-model actions are empty methods with `// TODO:` notes (some return sample data or simulate progress) until data/domain layers are wired.

## Stack

- State: Riverpod 3 with code generation (`@riverpod`, `riverpod_generator`)
- Network: Dio + Retrofit; models with freezed + json_serializable
- Navigation: go_router (`lib/app/router`)
- Errors: `fpdart` `Either<Failure, T>` (`FutureEither<T>`)
- UI: `package:material_ui/material_ui.dart` — **not** `package:flutter/material.dart` (Material moved out of the SDK in this Flutter version; mixing the two breaks theme types)
- Icons: UIcons (Flaticon) only — always via `AppIcons` in `core/theme/app_icons.dart` (const `IconData` copied from the `uicons_*` fonts: regular rounded, solid rounded for selected states, brands). Never `Icons.*`.
- Font: Nunito via google_fonts (stand-in for the design's SF Pro Rounded, which can't ship on Android).
- Platform variants: Home and History differ on iOS (floating glass tab bar, `app/shell/main_shell.dart`) vs Android (Material 3 `NavigationBar`, scan button in page headers). Use `isCupertinoPlatform(context)` from `core/utils/platform.dart`.

## Architecture: feature-first, clean architecture, MVVM

```
lib/
  main.dart              # bootstraps prefs, ProviderScope
  app/                   # composition root: App widget, router, tab shell (may import features)
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
