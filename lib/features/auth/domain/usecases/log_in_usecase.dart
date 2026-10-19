import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'log_in_usecase.g.dart';

typedef LogInParams = ({String email, String password});

class LogInUseCase implements UseCase<SignInResult, LogInParams> {
  const LogInUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<SignInResult> call(LogInParams params) =>
      _repository.logIn(email: params.email, password: params.password);
}

@riverpod
LogInUseCase logInUseCase(Ref ref) =>
    LogInUseCase(ref.watch(authRepositoryProvider));
