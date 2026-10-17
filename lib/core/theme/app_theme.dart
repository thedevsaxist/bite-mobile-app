import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/theme/app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData get light {
    final platform = defaultTargetPlatform;
    final textTheme = AppTextStyles.textTheme(platform);

    const colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: Colors.white,
      primaryContainer: AppColors.accentContainer,
      onPrimaryContainer: AppColors.onAccentContainer,
      secondary: AppColors.onAccentContainer,
      onSecondary: Colors.white,
      surface: AppColors.background,
      onSurface: AppColors.textPrimary,
      onSurfaceVariant: AppColors.textSecondary,
      surfaceContainerLow: AppColors.backgroundMuted,
      surfaceContainer: AppColors.surfaceMuted,
      outline: AppColors.inputBorder,
      outlineVariant: AppColors.border,
      error: AppColors.warning,
      onError: Colors.white,
      errorContainer: AppColors.warningContainer,
      onErrorContainer: AppColors.warningDark,
    );

    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadii.md),
    );

    OutlineInputBorder inputBorder(Color color, [double width = 1]) =>
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadii.input),
          borderSide: BorderSide(color: color, width: width),
        );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: AppTextStyles.fontFamily(platform),
      textTheme: textTheme,
      scaffoldBackgroundColor: AppColors.background,
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.inputBorder,
          minimumSize: const Size.fromHeight(AppSizes.buttonHeight),
          shape: buttonShape,
          textStyle: textTheme.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.textPrimary,
          backgroundColor: AppColors.surfaceMuted,
          side: BorderSide.none,
          minimumSize: const Size.fromHeight(AppSizes.buttonHeight),
          shape: buttonShape,
          textStyle: textTheme.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.accentText,
          minimumSize: const Size(0, AppSizes.minTouchTarget),
          textStyle: textTheme.titleSmall,
        ),
      ),
      inputDecorationTheme: InputDecorationThemeData(
        filled: true,
        fillColor: AppColors.background,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: 15,
        ),
        hintStyle: textTheme.bodyLarge?.copyWith(
          color: AppColors.textPlaceholder,
        ),
        errorStyle: textTheme.bodySmall?.copyWith(color: AppColors.warning),
        border: inputBorder(AppColors.inputBorder),
        enabledBorder: inputBorder(AppColors.inputBorder),
        focusedBorder: inputBorder(AppColors.primary, 1.5),
        errorBorder: inputBorder(AppColors.warning),
        focusedErrorBorder: inputBorder(AppColors.warning, 1.5),
      ),
      cardTheme: CardThemeData(
        color: AppColors.background,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadii.md),
          side: const BorderSide(color: AppColors.border),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: 1,
        space: 1,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.accent,
        linearTrackColor: AppColors.progressTrack,
        circularTrackColor: AppColors.progressTrack,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.textPrimary,
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadii.sm),
        ),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? AppColors.accent
              : AppColors.inactive,
        ),
        thumbColor: const WidgetStatePropertyAll(Colors.white),
        trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
      // Android bottom navigation (Material 3).
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.navBar,
        indicatorColor: AppColors.navIndicator,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? AppColors.onNavIndicator
                : AppColors.textSecondary,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => textTheme.labelSmall?.copyWith(
            color: states.contains(WidgetState.selected)
                ? AppColors.textPrimary
                : AppColors.textSecondary,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w700
                : FontWeight.w600,
          ),
        ),
      ),
      // Android segmented control (History period).
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: AppColors.navIndicator,
          selectedForegroundColor: AppColors.onNavIndicator,
          foregroundColor: AppColors.textPrimary,
          side: const BorderSide(color: AppColors.textPlaceholder),
          textStyle: textTheme.labelMedium,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: AppColors.inputBorder,
        dragHandleSize: Size(40, 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
      ),
    );
  }
}
