import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

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
  @override
  ProfileSetupState build() {
    // TODO: when editing, load the saved profile via GetProfileUseCase.
    return const ProfileSetupState(
      profile: UserProfile(
        age: 22,
        sex: Sex.male,
        heightCm: 175,
        weightKg: 68,
        activityLevel: ActivityLevel.lightlyActive,
        goal: WeightGoal.maintain,
      ),
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
    // TODO: validate ranges, call SaveProfileUseCase(state.profile) and store
    // the backend's daily calorie reference. Map a Failure to errorMessage.
    return true;
  }

  Future<void> skip() async {
    // TODO: remember that profile setup was skipped so Home can prompt later.
  }

  void _update(UserProfile Function(UserProfile) change) =>
      state = state.copyWith(profile: change(state.profile));
}
