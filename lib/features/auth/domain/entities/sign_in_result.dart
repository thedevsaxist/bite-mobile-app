import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';

part 'sign_in_result.freezed.dart';

@freezed
abstract class SignInResult with _$SignInResult {
  const factory SignInResult({
    required AppUser user,

    /// `true` when the account was just created, so the app continues to
    /// profile setup instead of Home.
    required bool isNewUser,
  }) = _SignInResult;
}
