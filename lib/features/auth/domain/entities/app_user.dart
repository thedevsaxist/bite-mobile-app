import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

/// The signed-in account (report §3.5.3, "Users").
@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String email,

    /// Optional at sign-up, and Apple only shares it on the first sign-in.
    String? name,
  }) = _AppUser;
  const AppUser._();

  /// The name, or the part of the email before the @ when there is none.
  String get displayName {
    final trimmed = name?.trim();
    return trimmed == null || trimmed.isEmpty
        ? email.split('@').first
        : trimmed;
  }
}
