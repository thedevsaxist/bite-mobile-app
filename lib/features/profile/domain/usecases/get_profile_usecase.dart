import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/repositories/profile_repository.dart';

part 'get_profile_usecase.g.dart';

/// `null` when the user hasn't set up a profile yet.
class GetProfileUseCase implements UseCase<SavedProfile?, NoParams> {
  const GetProfileUseCase(this._repository);

  final ProfileRepository _repository;

  @override
  FutureEither<SavedProfile?> call(NoParams params) => _repository.getProfile();
}

@riverpod
GetProfileUseCase getProfileUseCase(Ref ref) =>
    GetProfileUseCase(ref.watch(profileRepositoryProvider));
