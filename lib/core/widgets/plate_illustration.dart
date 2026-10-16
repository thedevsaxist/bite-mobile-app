import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';

/// The stylised plate of food used throughout the design in place of a
/// photo (welcome, onboarding, camera, analysing, result).
///
/// [size] is the plate's diameter. Food blobs scale with it.
class PlateIllustration extends StatelessWidget {
  const PlateIllustration({
    required this.size,
    this.plateColor = AppColors.background,
    this.showRim = true,
    super.key,
  });

  final double size;
  final Color plateColor;

  /// Draws the thin border around the plate (light backgrounds only).
  final bool showRim;

  // Blob positions are measured on the design's 196px plate.
  static const _designSize = 196.0;
  static const _blobs = [
    (Rect.fromLTWH(34, 40, 88, 72), AppColors.foodOrange),
    (Rect.fromLTWH(104, 92, 60, 58), AppColors.foodBrown),
    (Rect.fromLTWH(50, 118, 52, 40), AppColors.foodYellow),
  ];

  @override
  Widget build(BuildContext context) {
    final scale = size / _designSize;

    return ExcludeSemantics(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: plateColor,
          shape: BoxShape.circle,
          border: showRim ? Border.all(color: AppColors.border) : null,
        ),
        child: Stack(
          children: [
            for (final (rect, color) in _blobs)
              Positioned(
                left: rect.left * scale,
                top: rect.top * scale,
                width: rect.width * scale,
                height: rect.height * scale,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(
                      rect.shortestSide / 2 * scale,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// A [PlateIllustration] centred on a soft circular backdrop, as on the
/// welcome and onboarding screens.
class PlateWithBackdrop extends StatelessWidget {
  const PlateWithBackdrop({required this.size, super.key});

  /// Diameter of the backdrop; the plate is ~79% of it.
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.surfaceMuted,
        shape: BoxShape.circle,
      ),
      child: PlateIllustration(size: size * 0.79),
    );
  }
}

/// Dark photo placeholder with a plate in it — stands in for the user's
/// meal photo until real images are wired up.
class MealPhotoPlaceholder extends StatelessWidget {
  const MealPhotoPlaceholder({
    required this.plateSize,
    this.height,
    this.borderRadius = BorderRadius.zero,
    this.platePadding = EdgeInsets.zero,
    this.child,
    super.key,
  });

  final double plateSize;
  final double? height;
  final BorderRadius borderRadius;

  /// Shifts the plate, e.g. below the status bar on a full-bleed header.
  final EdgeInsets platePadding;

  /// Overlaid on top, e.g. a "Retake" chip or scan line.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: height,
        color: AppColors.surfaceDark,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: platePadding,
              child: PlateIllustration(
                size: plateSize,
                plateColor: AppColors.plate,
                showRim: false,
              ),
            ),
            ?child,
          ],
        ),
      ),
    );
  }
}
