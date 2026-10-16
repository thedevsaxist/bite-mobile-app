import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';

/// Camera viewfinder with corner guides and a framing hint.
///
/// Shows the plate illustration until the camera preview is wired up.
class Viewfinder extends StatelessWidget {
  const Viewfinder({this.preview, super.key});

  /// The live camera preview. Null shows the placeholder plate.
  final Widget? preview;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: ColoredBox(
        color: AppColors.surfaceDark,
        child: Stack(
          fit: StackFit.expand,
          children: [
            preview ??
                Center(
                  child: Container(
                    width: 230,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.cameraPlateRing,
                      shape: BoxShape.circle,
                    ),
                    child: const PlateIllustration(
                      size: 186,
                      plateColor: AppColors.plate,
                      showRim: false,
                    ),
                  ),
                ),
            const Padding(
              padding: EdgeInsets.all(32),
              child: CustomPaint(painter: _CornerGuidesPainter()),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cameraBackground.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    'Fit the whole plate in the frame',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
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

class _CornerGuidesPainter extends CustomPainter {
  const _CornerGuidesPainter();

  static const _length = 40.0;
  static const _radius = 14.0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    // Top-left corner, then mirrored to the other three.
    final corner = Path()
      ..moveTo(0, _length)
      ..lineTo(0, _radius)
      ..arcToPoint(
        const Offset(_radius, 0),
        radius: const Radius.circular(_radius),
      )
      ..lineTo(_length, 0);

    for (final (dx, dy, sx, sy) in [
      (0.0, 0.0, 1.0, 1.0),
      (size.width, 0.0, -1.0, 1.0),
      (0.0, size.height, 1.0, -1.0),
      (size.width, size.height, -1.0, -1.0),
    ]) {
      canvas
        ..save()
        ..translate(dx, dy)
        ..scale(sx, sy)
        ..drawPath(corner, paint)
        ..restore();
    }
  }

  @override
  bool shouldRepaint(_CornerGuidesPainter oldDelegate) => false;
}
