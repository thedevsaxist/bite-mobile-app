import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'restore_session_usecase.g.dart';

/// Picks up the stored session at start-up. `null` means signed out.
class RestoreSessionUseCase implements UseCase<AppUser?, NoParams> {
  const RestoreSessionUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<AppUser?> call(NoParams params) => _repository.restoreSession();
}

@riverpod
RestoreSessionUseCase restoreSessionUseCase(Ref ref) =>
    RestoreSessionUseCase(ref.watch(authRepositoryProvider));
