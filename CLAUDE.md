# Bite — calorie estimator (final-year project)

Flutter app that recognises food in a photo and estimates calories. Source of truth for requirements: the project report (Chapter 3). Source of truth for UI: the Claude Design canvas at https://claude.ai/artifact/QgbSShJHY5fPfmmKzLDUi4 (16 screen artboards: Welcome, Log in, Onboarding, Create account, Profile setup, Home iOS/Android, Capture, Meal details, Analysing, Result, Edit item, Couldn't analyse, History iOS/Android, Profile & settings; plus brand artboards B1 Logo, B2 App icon, B3/B4 Splash, B5 In-app sizes, B6 Loader). Re-read the relevant artboard before changing a screen — the design is still being edited.

The app is being built **one feature at a time**. All screens exist as UI. The backend is an Express API at `/Users/thedevwriter/developer/projects/Backend Projects/final year project backend` (its `README.md` lists endpoints, `docs/ROADMAP.md` the build stages). Every backend module is wired: auth (email, Google via Firebase Auth, refresh, log out), `users/me`, profile + daily reference, settings, onboarding flag, analyses (photo upload, AI result, validate, dispute), meals (history, edits via `PATCH /meals/:id`), summaries (Home's today, History's chart; grouped in the device timezone from `DeviceTimezone`), nutrition search (Edit item). Meals and summaries aren't cached offline yet (`meal_records`/`meal_items` need a migration first). Shared meal entities (`MealRecord`, `MealItem`, `Nutrients`, `PortionUnit`: `g`/`ml`/`serving` only) live in `features/history/domain/entities/meal_record.dart`. `mealChangesProvider` / `profileChangesProvider` are bumped after saves so Home and History reload.

An account is **required** (decided over the design's "account optional"): onboarding goes to Create account, and the router redirects signed-out users to Welcome from every route except splash/welcome/onboarding/login/create-account. Session state is `authSessionProvider` (`features/auth/presentation/view_models/auth_session.dart`).

## Stack

- State: Riverpod 3 with code generation (`@riverpod`, `riverpod_generator`)
- Network: Dio + Retrofit; models with freezed + json_serializable. Backend responses are `{success, data}` / `{success: false, error: {code, message, details}}`: `EnvelopeInterceptor` unwraps `data` so Retrofit returns DTOs directly; `ApiError` (`core/network/api_error.dart`) reads error bodies. `AuthInterceptor` adds the bearer token and, on `401 TOKEN_EXPIRED`, runs one shared refresh (the backend rotates refresh tokens and treats reuse as theft) and retries; a rejected refresh clears tokens and bumps `sessionExpiryProvider`, which signs the user out. Public endpoints use `@Extra({AuthInterceptor.skipAuth: true})`. The backend rejects unknown body keys and explicit `null`s, so request DTOs hold only accepted fields and use `includeIfNull: false` for optional ones.
- Repositories fall back to the local cache when `failure.isUnreachable` (offline, timeout, 5xx).
- Navigation: go_router (`lib/app/router`)
- Storage (`core/storage`), opened in `main.dart` and injected via provider overrides:
  - `SecureStorageService` (flutter_secure_storage) — tokens and any other secrets; keys in `SecureStorageKeys`. Wiped on the first launch after install (iOS Keychain survives uninstall) and on log out.
  - `PreferencesService` (shared_preferences, `SharedPreferencesWithCache`) — settings and flags; every key must be in `PreferenceKeys.all`.
  - `AppDatabase` (sqflite) — offline cache of server data (`users`, `user_profiles`, `meal_records`, `meal_items`); the backend stays the source of truth. Schema changes = append to `_migrations`, never edit a shipped one. Local data sources use `DbTables` names; `clearUserData()` cascades on log out. `guard()` maps `DatabaseException` to `CacheFailure`. Tests use `sqflite_common_ffi` with `inMemoryDatabasePath`.
- Errors: `fpdart` `Either<Failure, T>` (`FutureEither<T>`)
- UI: `package:material_ui/material_ui.dart` — **not** `package:flutter/material.dart` (Material moved out of the SDK in this Flutter version; mixing the two breaks theme types)
- Icons: UIcons (Flaticon) only, called directly where they're used from the `uicons` package — `UIcons.regularRounded.<name>`, `UIcons.solidRounded.<name>` for selected states, `UIcons.brands.<name>`. The getters aren't const, so drop `const` around them. A UIcons glyph the package lacks ships as an SVG in `assets/icons/` (from Flaticon), shown with `SvgPicture.asset` + `colorFilter`. Never `Icons.*`, and override Material widgets' default icons with a UIcons glyph. Flaticon's free licence needs credit — registered with `LicenseRegistry` in `main.dart`.
- Fonts: SF Pro Rounded on iOS (bundled, subset to Latin, in `assets/fonts/sf_pro_rounded` — Apple's SF licence covers mock-ups only, so swap before any store release); Poppins on Android via google_fonts. Chosen in `AppTextStyles.textTheme(platform)`; the design's 0.01em tracking is applied there too.
- Loading: always the bite loader (`AppLoader` / `AppLoadingView` in `core/widgets/app_loader.dart`, design artboard B6) — never `CircularProgressIndicator`. Pages: `AsyncValueView(loadingMessage: …)`; buttons: `PrimaryButton(isLoading:, loadingLabel:)`.
- Brand: the app is **Bite** (`AppConstants.appName`; lowercase `wordmark` "bite" in Bricolage Grotesque Bold). Palette in `core/theme/app_colors.dart`: Ink `primary` for buttons, Paprika `accent` for graphics/active states, `accentText` (Paprika deep) for paprika-coloured text, warm neutrals for surfaces — no greens. Logo: `BiteMark` / `BiteLogo` in `core/widgets/bite_mark.dart` (shared path with the loader).
- App icons and native splash are generated from PNGs in `assets/brand/` (rendered from the bite mark SVG): `dart run flutter_launcher_icons` and `dart run flutter_native_splash:create` (configs in the project root). The Flutter `SplashView` (route `/`) repeats the native splash layout and hands off to the 88px loader if start-up is slow.
- Platform variants: Home and History differ on iOS (floating liquid glass tab bar from `liquid_glass_widgets` — `GlassTabBar.bottom`, initialised and wrapped in `main.dart` — in `app/shell/main_shell.dart`) vs Android (Material 3 `NavigationBar`, scan button in page headers). Use `isCupertinoPlatform(context)` from `core/utils/platform.dart`.

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
cd "../../../Backend Projects/final year project backend" && npm run dev   # backend on :4000
flutter run                                                       # iOS simulator: localhost:4000
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:4000/api/v1 # Android emulator
```

Google sign-in: `google_sign_in` (OAuth clients of the Firebase project `bite-466bf`) → Firebase Auth `signInWithCredential` → the Firebase ID token goes to `POST /auth/firebase`, which returns the backend's own tokens; Firebase is used for nothing else. iOS client ID: `ios/Flutter/GoogleSignIn.xcconfig`; web client ID: `AppConfig.googleServerClientId`. Android needs each signing key's SHA-1 registered in Firebase (the debug keystore's is; add the release key's before release). Keep `firebase_core` on 4.x: 5.x pulls Firebase iOS SDK 13, which conflicts with the Google Sign-In iOS SDK.

Sign in with Apple shows "coming soon" (no paid Apple developer account yet, so no entitlement). The data layer is ready: re-add the capability, set the backend's `APPLE_CLIENT_IDS` to `com.bite.app` and enable Apple in Firebase and restore the call in `LoginViewModel.continueWithApple` (the data layer already goes through Firebase). The Apple button is hidden on Android (needs a web flow the backend doesn't have).
