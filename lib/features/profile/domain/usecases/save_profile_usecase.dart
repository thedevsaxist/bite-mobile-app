import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/profile/domain/repositories/profile_repository.dart';

part 'save_profile_usecase.g.dart';

class SaveProfileUseCase implements UseCase<SavedProfile, UserProfile> {
  const SaveProfileUseCase(this._repository);

  final ProfileRepository _repository;

  @override
  FutureEither<SavedProfile> call(UserProfile params) =>
      _repository.saveProfile(params);
}

@riverpod
SaveProfileUseCase saveProfileUseCase(Ref ref) =>
    SaveProfileUseCase(ref.watch(profileRepositoryProvider));
