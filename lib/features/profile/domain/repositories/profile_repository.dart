import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

abstract interface class ProfileRepository {
  /// The saved profile, or `null` if the user hasn't set one up yet. Falls
  /// back to the cached copy when the backend can't be reached.
  FutureEither<SavedProfile?> getProfile();

  /// Saves the whole profile; the backend recalculates the daily reference.
  FutureEither<SavedProfile> saveProfile(UserProfile profile);
}
