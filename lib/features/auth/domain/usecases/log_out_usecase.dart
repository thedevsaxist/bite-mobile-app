import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'log_out_usecase.g.dart';

class LogOutUseCase implements UseCase<Unit, NoParams> {
  const LogOutUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<Unit> call(NoParams params) => _repository.logOut();
}

@riverpod
LogOutUseCase logOutUseCase(Ref ref) =>
    LogOutUseCase(ref.watch(authRepositoryProvider));
