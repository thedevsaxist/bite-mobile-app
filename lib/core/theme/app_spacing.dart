import 'package:flutter/widgets.dart';

abstract final class AppSpacing {
  static const xxs = 4.0;
  static const xs = 8.0;
  static const sm = 12.0;
  static const md = 16.0;
  static const lg = 20.0;
  static const xl = 24.0;
  static const xxl = 32.0;
  static const xxxl = 48.0;

  /// Horizontal padding for full-screen views.
  static const screenPadding = EdgeInsets.symmetric(horizontal: xl);
}

abstract final class AppRadii {
  static const xs = 10.0;
  static const sm = 12.0;
  static const input = 14.0;
  static const md = 16.0;
  static const lg = 22.0;
  static const sheet = 24.0;
  static const pill = 999.0;
}

abstract final class AppSizes {
  static const buttonHeight = 56.0;
  static const inputHeight = 52.0;
  static const minTouchTarget = 44.0;

  /// Bottom padding for tab pages on iOS so content scrolls clear of the
  /// floating tab bar.
  static const floatingTabBarClearance = 112.0;
}
