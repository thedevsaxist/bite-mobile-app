import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';

/// Manrope type scale from the design.
abstract final class AppTextStyles {
  static const _primary = AppColors.textPrimary;
  static const _secondary = AppColors.textSecondary;

  static TextTheme textTheme() => GoogleFonts.manropeTextTheme(
    const TextTheme(
      // Large calorie totals, e.g. "860 kcal" on the result screen.
      displayMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w800,
        letterSpacing: -1,
        height: 1.05,
        color: _primary,
      ),
      // Welcome headline.
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.6,
        height: 1.15,
        color: _primary,
      ),
      // Screen titles.
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.5,
        color: _primary,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.4,
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
      bodyLarge: TextStyle(fontSize: 16, height: 1.5, color: _primary),
      bodyMedium: TextStyle(fontSize: 15, height: 1.5, color: _primary),
      bodySmall: TextStyle(fontSize: 13, height: 1.5, color: _secondary),
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
