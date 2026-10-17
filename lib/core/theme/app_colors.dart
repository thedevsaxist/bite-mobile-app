import 'package:material_ui/material_ui.dart';

/// The bite palette from the Claude Design canvas (artboard B1 and the
/// screens).
///
/// Ink is for buttons and primary marks; Paprika for graphics, fills and
/// active states (ring, scan button, switches, selected options); Paprika
/// deep for paprika-coloured text.
abstract final class AppColors {
  // Brand
  static const ink = Color(0xFF141414);
  static const paprika = Color(0xFFFF5A1F);
  static const paprikaDeep = Color(0xFFC2410C);
  static const paprikaTint = Color(0xFFFFE8DE);
  static const night = Color(0xFF121212);

  // Roles
  /// Buttons and primary marks.
  static const primary = ink;

  /// Graphics, fills and active states.
  static const accent = paprika;

  /// Paprika-coloured text: links, text buttons, eyebrows, highlights.
  static const accentText = paprikaDeep;

  /// Tinted backgrounds for selected options, chips and avatars.
  static const accentContainer = paprikaTint;
  static const onAccentContainer = Color(0xFF9A3412);

  // Text
  static const textPrimary = ink;
  static const textSecondary = Color(0xFF5A5A5A);
  static const textPlaceholder = Color(0xFF8C8780);

  // Surfaces
  static const background = Color(0xFFFFFFFF);
  static const backgroundMuted = Color(0xFFF7F5F2);
  static const surfaceMuted = Color(0xFFF1EEEA);
  static const segmentedTrack = Color(0xFFECE9E4);
  static const surfaceDark = Color(0xFF1E1E1E);

  // Lines
  static const border = Color(0xFFE6E3DE);
  static const borderSubtle = Color(0xFFEFECE8);
  static const inputBorder = Color(0xFFD9D5CF);
  static const inactive = Color(0xFFCFCAC3);
  static const progressTrack = Color(0xFFECE9E4);

  // Warnings and errors use the warm paprika tones rather than red.
  static const warning = paprikaDeep;
  static const warningDark = onAccentContainer;
  static const warningContainer = paprikaTint;

  // Android (Material 3) navigation
  static const navBar = surfaceMuted;
  static const navIndicator = Color(0xFFFFD5C2);
  static const onNavIndicator = Color(0xFF7C2D12);

  // Charts
  static const chartAboveReference = paprika;
  static const chartInProgress = Color(0xFFC9C4BD);

  // Camera / scan flow
  static const cameraBackground = night;
  static const cameraPlateRing = Color(0xFF2E2E2E);
  static const cameraHint = Color(0xFFC9C4BD);
  static const scanLine = paprika;
  static const pendingStep = inactive;

  // Food illustration
  static const plate = backgroundMuted;
  static const foodOrange = Color(0xFFE2803A);
  static const foodBrown = Color(0xFFA86B3C);
  static const foodYellow = Color(0xFFF2C14E);
  static const foodAmber = Color(0xFFC98A3D);
  static const foodOrangeTint = Color(0xFFF5E3D3);
  static const foodYellowTint = Color(0xFFF6EED6);

  /// Dot colours used to tell recognised food items apart.
  static const foodItemColors = [foodOrange, foodYellow, foodBrown, foodAmber];
}
