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
  static const surfaceDark = Color(0xFF26302B);

  // Lines
  static const border = Color(0xFFE4E7E2);
  static const inputBorder = Color(0xFFD5DAD3);
  static const progressTrack = Color(0xFFE7EBE5);

  // Warnings and errors use warm tones rather than red.
  static const warning = Color(0xFFA3480B);
  static const warningDark = Color(0xFF8A3D09);
  static const warningContainer = Color(0xFFFBEDE2);

  // Food illustration accents
  static const foodOrange = Color(0xFFE2803A);
  static const foodBrown = Color(0xFFA86B3C);
  static const foodYellow = Color(0xFFF2C14E);
  static const foodAmber = Color(0xFFC98A3D);
  static const foodOrangeTint = Color(0xFFF5E3D3);
  static const foodYellowTint = Color(0xFFF6EED6);
}
