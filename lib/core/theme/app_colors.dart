import 'package:material_ui/material_ui.dart';

/// Palette taken from the Claude Design canvas.
abstract final class AppColors {
  // Brand
  static const primary = Color(0xFF1E7A4C);
  static const primaryDark = Color(0xFF155C39);
  static const primaryContainer = Color(0xFFE3F1E8);

  // Text
  static const textPrimary = Color(0xFF14201A);
  static const textSecondary = Color(0xFF5B665F);
  static const textPlaceholder = Color(0xFF8A938D);

  // Surfaces
  static const background = Color(0xFFFFFFFF);
  static const backgroundMuted = Color(0xFFF7F8F5);
  static const surfaceMuted = Color(0xFFF3F5F1);
  static const segmentedTrack = Color(0xFFECEFEA);
  static const surfaceDark = Color(0xFF26302B);

  // Lines
  static const border = Color(0xFFE4E7E2);
  static const borderSubtle = Color(0xFFEEF0EC);
  static const inputBorder = Color(0xFFD5DAD3);
  static const inactive = Color(0xFFC9CFC8);
  static const progressTrack = Color(0xFFE7EBE5);

  // Warnings and errors use warm tones rather than red.
  static const warning = Color(0xFFA3480B);
  static const warningDark = Color(0xFF8A3D09);
  static const warningContainer = Color(0xFFFBEDE2);

  // Android (Material 3) navigation
  static const navBar = Color(0xFFEDF1EB);
  static const navIndicator = Color(0xFFCFE6D8);
  static const onNavIndicator = Color(0xFF0E3D25);

  // Charts
  static const chartAboveReference = Color(0xFFC2611B);
  static const chartInProgress = Color(0xFF9FCDB3);

  // Camera / scan flow
  static const cameraBackground = Color(0xFF0F1512);
  static const cameraPlateRing = Color(0xFF3A4540);
  static const cameraHint = Color(0xFFC5CCC7);
  static const scanLine = Color(0xFF6FE3A6);
  static const pendingStep = Color(0xFFCDD3CC);

  // Food illustration
  static const plate = Color(0xFFE9ECE6);
  static const foodOrange = Color(0xFFE2803A);
  static const foodBrown = Color(0xFFA86B3C);
  static const foodYellow = Color(0xFFF2C14E);
  static const foodAmber = Color(0xFFC98A3D);
  static const foodOrangeTint = Color(0xFFF5E3D3);
  static const foodYellowTint = Color(0xFFF6EED6);

  /// Dot colours used to tell recognised food items apart.
  static const foodItemColors = [foodOrange, foodYellow, foodBrown, foodAmber];
}
