import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/log_out_usecase.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/auth_session.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:calorie_estimator/features/profile/presentation/view_models/profile_changes.dart';
import 'package:calorie_estimator/features/settings/domain/usecases/get_settings_usecase.dart';
import 'package:calorie_estimator/features/settings/domain/usecases/set_auto_save_results_usecase.dart';

part 'settings_view_model.freezed.dart';
part 'settings_view_model.g.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppUser user,
    UserProfile? profile,
    int? dailyReference,
    @Default(true) bool autoSaveResults,
    String? errorMessage,
  }) = _SettingsState;
}

/// 12 Profile & settings.
@riverpod
class SettingsViewModel extends _$SettingsViewModel {
  @override
  Future<SettingsState> build() async {
    // Reload after the details are edited.
    ref.watch(profileChangesProvider);

    final (user, profile, settings) = await (
      ref.read(getCurrentUserUseCaseProvider).call(const NoParams()),
      ref.read(getProfileUseCaseProvider).call(const NoParams()),
      ref.read(getSettingsUseCaseProvider).call(const NoParams()),
    ).wait;

    final saved = profile.getOrElse((failure) => throw failure);
    return SettingsState(
      user: user.getOrElse((failure) => throw failure),
      profile: saved?.profile,
      dailyReference: saved?.dailyCalorieReference,
      autoSaveResults: settings
          .getOrElse((failure) => throw failure)
          .autoSaveResults,
    );
  }

  /// Flips the switch straight away and puts it back if saving fails.
  Future<void> setAutoSaveResults(bool enabled) async {
    final current = state.value;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(autoSaveResults: enabled, errorMessage: null),
    );

    final result = await ref
        .read(setAutoSaveResultsUseCaseProvider)
        .call(enabled);
    if (!ref.mounted) return;
    if (result case Left(:final value)) {
      state = AsyncData(current.copyWith(errorMessage: value.message));
    }
  }

  /// Returns `true` once signed out. Always succeeds on the device, even if
  /// the backend can't be told.
  Future<bool> logOut() async {
    await ref.read(logOutUseCaseProvider).call(const NoParams());
    ref.read(authSessionProvider.notifier).signedOut();
    return true;
  }
}
