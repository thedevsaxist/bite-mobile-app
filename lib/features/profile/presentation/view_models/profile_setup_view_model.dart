import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:calorie_estimator/features/profile/domain/usecases/save_profile_usecase.dart';
import 'package:calorie_estimator/features/profile/presentation/view_models/profile_changes.dart';

part 'profile_setup_view_model.freezed.dart';
part 'profile_setup_view_model.g.dart';

@freezed
abstract class ProfileSetupState with _$ProfileSetupState {
  const factory ProfileSetupState({
    required UserProfile profile,
    @Default(false) bool isSaving,
    String? errorMessage,
  }) = _ProfileSetupState;
}

/// 03 Profile setup. Also used to edit details from Profile & settings.
@riverpod
class ProfileSetupViewModel extends _$ProfileSetupViewModel {
  /// Starting values for a new account.
  static const _defaults = UserProfile(
    age: 22,
    sex: Sex.male,
    heightCm: 175,
    weightKg: 68,
    activityLevel: ActivityLevel.lightlyActive,
    goal: WeightGoal.maintain,
  );

  @override
  Future<ProfileSetupState> build() async {
    // A failure is shown with a retry rather than falling back to defaults,
    // which saving would then write over the real profile.
    final saved = await ref
        .read(getProfileUseCaseProvider)
        .call(const NoParams());
    return ProfileSetupState(
      profile:
          saved.getOrElse((failure) => throw failure)?.profile ?? _defaults,
    );
  }

  void setAge(String value) =>
      _update((p) => p.copyWith(age: int.tryParse(value) ?? p.age));

  void setSex(Sex sex) => _update((p) => p.copyWith(sex: sex));

  void setHeight(String value) => _update(
    (p) => p.copyWith(heightCm: double.tryParse(value) ?? p.heightCm),
  );

  void setWeight(String value) => _update(
    (p) => p.copyWith(weightKg: double.tryParse(value) ?? p.weightKg),
  );

  void setActivityLevel(ActivityLevel level) =>
      _update((p) => p.copyWith(activityLevel: level));

  void setGoal(WeightGoal goal) => _update((p) => p.copyWith(goal: goal));

  /// Returns `true` once the profile is saved.
  Future<bool> save() async {
    final current = state.value;
    if (current == null || current.isSaving) return false;

    final error = _validate(current.profile);
    if (error != null) {
      _showError(current, error);
      return false;
    }

    state = AsyncData(current.copyWith(isSaving: true, errorMessage: null));
    final result = await ref
        .read(saveProfileUseCaseProvider)
        .call(current.profile);
    if (!ref.mounted) return false;

    switch (result) {
      case Right():
        state = AsyncData(current.copyWith(isSaving: false));
        ref.read(profileChangesProvider.notifier).saved();
        return true;
      case Left(:final value):
        _showError(current, value.message);
        return false;
    }
  }

  Future<void> skip() async {
    // TODO: remember that profile setup was skipped so Home can prompt later.
  }

  static String? _validate(UserProfile profile) {
    const age = UserProfile.ageRange;
    const height = UserProfile.heightCmRange;
    const weight = UserProfile.weightKgRange;
    if (profile.age < age.min || profile.age > age.max) {
      return 'Enter an age between ${age.min} and ${age.max}.';
    }
    if (profile.heightCm < height.min || profile.heightCm > height.max) {
      return 'Enter a height between ${height.min} and ${height.max} cm.';
    }
    if (profile.weightKg < weight.min || profile.weightKg > weight.max) {
      return 'Enter a weight between ${weight.min} and ${weight.max} kg.';
    }
    return null;
  }

  /// Clears the message first so the same error shows again on a retry.
  void _showError(ProfileSetupState current, String message) {
    state = AsyncData(current.copyWith(isSaving: false, errorMessage: null));
    state = AsyncData(current.copyWith(isSaving: false, errorMessage: message));
  }

  void _update(UserProfile Function(UserProfile) change) {
    final current = state.value;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(profile: change(current.profile), errorMessage: null),
    );
  }
}
