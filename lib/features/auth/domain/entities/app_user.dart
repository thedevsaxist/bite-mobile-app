import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

/// The signed-in account (report §3.5.3, "Users").
@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String fullName,
    required String email,
  }) = _AppUser;
}
