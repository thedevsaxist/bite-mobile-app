import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'get_current_user_usecase.g.dart';

class GetCurrentUserUseCase implements UseCase<AppUser, NoParams> {
  const GetCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<AppUser> call(NoParams params) => _repository.getCurrentUser();
}

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(Ref ref) =>
    GetCurrentUserUseCase(ref.watch(authRepositoryProvider));
