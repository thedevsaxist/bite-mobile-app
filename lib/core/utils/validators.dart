import 'package:calorie_estimator/core/constants/app_constants.dart';

abstract final class Validators {
  static final _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  static bool isValidEmail(String value) => _email.hasMatch(value.trim());

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) return 'Enter your email';
    if (!isValidEmail(value)) return 'Enter a valid email address';
    return null;
  }

  static String? required(String? value, String message) =>
      value == null || value.trim().isEmpty ? message : null;
}

/// The sign-up password checklist shown under the password field.
enum PasswordRule {
  minLength('${AppConstants.minPasswordLength}+ characters'),
  uppercase('One uppercase letter'),
  number('One number'),
  symbol('One symbol');

  const PasswordRule(this.label);

  final String label;

  bool isMetBy(String password) => switch (this) {
    minLength => password.length >= AppConstants.minPasswordLength,
    uppercase => password.contains(RegExp('[A-Z]')),
    number => password.contains(RegExp('[0-9]')),
    symbol => password.contains(RegExp('[^A-Za-z0-9]')),
  };

  static bool allMetBy(String password) =>
      values.every((rule) => rule.isMetBy(password));
}
