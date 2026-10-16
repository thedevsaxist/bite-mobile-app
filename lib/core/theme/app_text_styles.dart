import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';

/// Type scale from the design.
///
/// The design uses SF Pro Rounded, which can't be shipped on Android, so the
/// app uses Nunito — the closest open rounded sans — on both platforms.
abstract final class AppTextStyles {
  static const _primary = AppColors.textPrimary;
  static const _secondary = AppColors.textSecondary;

  static TextTheme textTheme() => GoogleFonts.nunitoTextTheme(
    const TextTheme(
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
    ),
  );
}
