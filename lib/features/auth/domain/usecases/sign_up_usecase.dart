import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'sign_up_usecase.g.dart';

typedef SignUpParams = ({String name, String email, String password});

/// Creates an email/password account and signs in.
class SignUpUseCase implements UseCase<SignInResult, SignUpParams> {
  const SignUpUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureEither<SignInResult> call(SignUpParams params) => _repository.signUp(
    name: params.name,
    email: params.email,
    password: params.password,
  );
}

@riverpod
SignUpUseCase signUpUseCase(Ref ref) =>
    SignUpUseCase(ref.watch(authRepositoryProvider));
