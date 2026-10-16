import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

part 'settings_view_model.freezed.dart';
part 'settings_view_model.g.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppUser user,
    UserProfile? profile,
    int? dailyReference,
    @Default(true) bool autoSaveResults,
  }) = _SettingsState;
}

/// 12 Profile & settings.
@riverpod
class SettingsViewModel extends _$SettingsViewModel {
  @override
  Future<SettingsState> build() async {
    // TODO: load the user (GetCurrentUserUseCase), profile and daily reference
    // (GetProfileUseCase) and the auto-save setting (GetSettingsUseCase).
    // Sample data matches the design.
    return const SettingsState(
      user: AppUser(
        id: 'sample-user',
        fullName: 'Chidiebube Iroezindu',
        email: 'chidiebube@example.com',
      ),
      profile: UserProfile(
        age: 22,
        sex: Sex.male,
        heightCm: 175,
        weightKg: 68,
        activityLevel: ActivityLevel.lightlyActive,
        goal: WeightGoal.maintain,
      ),
      dailyReference: 2150,
    );
  }

  Future<void> setAutoSaveResults(bool enabled) async {
    final current = state.value;
    if (current == null) return;
    // TODO: persist via UpdateSettingsUseCase (backend user_settings and
    // PreferencesService) and roll back on failure.
    state = AsyncData(current.copyWith(autoSaveResults: enabled));
  }

  /// Returns `true` once signed out.
  Future<bool> logOut() async {
    // TODO: call LogOutUseCase (revoke the session, clear secure storage and
    // cached user data).
    return true;
  }
}
