import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

part 'saved_profile.freezed.dart';

/// A profile as stored on the backend, with the daily calorie reference it
/// calculated from it.
@freezed
abstract class SavedProfile with _$SavedProfile {
  const factory SavedProfile({
    required UserProfile profile,

    /// kcal per day: an estimate, not dietary advice.
    required int dailyCalorieReference,
  }) = _SavedProfile;
}
