import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'sign_in_with_apple_usecase.g.dart';

class SignInWithAppleUseCase implements UseCase<SignInResult, NoParams> {
  const SignInWithAppleUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<SignInResult> call(NoParams params) =>
      _repository.signInWithApple();
}

@riverpod
SignInWithAppleUseCase signInWithAppleUseCase(Ref ref) =>
    SignInWithAppleUseCase(ref.watch(authRepositoryProvider));
