import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';

/// Type scale from the design.
///
/// iOS uses SF Pro Rounded (bundled in assets/fonts); Android uses Poppins
/// (google_fonts).
abstract final class AppTextStyles {
  static const iosFontFamily = 'SF Pro Rounded';

  static const _primary = AppColors.textPrimary;
  static const _secondary = AppColors.textSecondary;

  static bool _isApple(TargetPlatform platform) =>
      platform == TargetPlatform.iOS || platform == TargetPlatform.macOS;

  /// The app-wide font family for [platform].
  static String? fontFamily(TargetPlatform platform) =>
      _isApple(platform) ? iosFontFamily : GoogleFonts.poppins().fontFamily;

  static TextTheme textTheme(TargetPlatform platform) => _isApple(platform)
      ? _tracked(_scale).apply(fontFamily: iosFontFamily)
      : GoogleFonts.poppinsTextTheme(_tracked(_scale));

  /// The design sets `letter-spacing: 0.01em` on all text.
  static TextTheme _tracked(TextTheme theme) {
    TextStyle? track(TextStyle? style) =>
        style?.copyWith(letterSpacing: (style.fontSize ?? 14) * 0.01);

    return theme.copyWith(
      displayMedium: track(theme.displayMedium),
      displaySmall: track(theme.displaySmall),
      headlineMedium: track(theme.headlineMedium),
      headlineSmall: track(theme.headlineSmall),
      titleLarge: track(theme.titleLarge),
      titleMedium: track(theme.titleMedium),
      titleSmall: track(theme.titleSmall),
      bodyLarge: track(theme.bodyLarge),
      bodyMedium: track(theme.bodyMedium),
      bodySmall: track(theme.bodySmall),
      labelLarge: track(theme.labelLarge),
      labelMedium: track(theme.labelMedium),
      labelSmall: track(theme.labelSmall),
    );
  }

  static const _scale = TextTheme(
    // Large calorie totals, e.g. "860 kcal" on the result screen.
    displayMedium: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      height: 1.1,
      color: _primary,
    ),
    // Welcome headline.
    displaySmall: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      height: 1.2,
      color: _primary,
    ),
    // Screen titles.
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      height: 1.2,
      color: _primary,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w800,
      height: 1.2,
      color: _primary,
    ),
    // Section headers, e.g. "Today's meals".
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: _primary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: _primary,
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: _primary,
    ),
    bodyLarge: TextStyle(fontSize: 16, height: 1.4, color: _primary),
    bodyMedium: TextStyle(fontSize: 15, height: 1.4, color: _primary),
    bodySmall: TextStyle(fontSize: 13, height: 1.4, color: _secondary),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: _primary,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: _primary,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: _secondary,
    ),
  );
}
