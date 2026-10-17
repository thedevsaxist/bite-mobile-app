import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';

/// Geometry of the bite mark (design artboard B1), on a 100×100 grid: a plate
/// ring with a bite out of its edge, and a paprika dot.
abstract final class BiteMarkGeometry {
  static const gridSize = 100.0;

  /// The ring, with the inner circle cut out (even-odd fill).
  static final ring = Path()
    ..fillType = PathFillType.evenOdd
    ..moveTo(88.69, 39.84)
    ..arcToPoint(
      const Offset(61.50, 11.69),
      radius: const Radius.circular(40),
      largeArc: true,
    )
    ..arcToPoint(
      const Offset(71.57, 22.39),
      radius: const Radius.circular(10.5),
      clockwise: false,
    )
    ..arcToPoint(
      const Offset(78.35, 29.40),
      radius: const Radius.circular(10.5),
      clockwise: false,
    )
    ..arcToPoint(
      const Offset(88.69, 39.84),
      radius: const Radius.circular(10.5),
      clockwise: false,
    )
    ..close()
    ..addOval(Rect.fromCircle(center: const Offset(50, 50), radius: 26));

  static const ringCenter = Offset(50, 50);
  static const dotCenter = Offset(53, 47);
  static const dotRadius = 11.0;
}

/// The static bite mark.
///
/// Sizes from the design (B5): 96–128 splash, 64 empty/error states,
/// 36 welcome header, 24 app bar, 16 minimum. Below 24 the design uses a
/// one-colour mark, so the dot follows [ringColor] there.
class BiteMark extends StatelessWidget {
  const BiteMark({
    this.size = 36,
    this.ringColor = AppColors.ink,
    this.dotColor = AppColors.paprika,
    this.semanticLabel,
    super.key,
  });

  final double size;
  final Color ringColor;
  final Color dotColor;

  /// Announced to screen readers; null hides the mark from them.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final mark = CustomPaint(
      size: Size.square(size),
      painter: _BiteMarkPainter(
        ringColor: ringColor,
        dotColor: size < 24 ? ringColor : dotColor,
      ),
    );

    return semanticLabel == null
        ? ExcludeSemantics(child: mark)
        : Semantics(label: semanticLabel, image: true, child: mark);
  }
}

class _BiteMarkPainter extends CustomPainter {
  const _BiteMarkPainter({required this.ringColor, required this.dotColor});

  final Color ringColor;
  final Color dotColor;

  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..save()
      ..scale(
        size.width / BiteMarkGeometry.gridSize,
        size.height / BiteMarkGeometry.gridSize,
      )
      ..drawPath(BiteMarkGeometry.ring, Paint()..color = ringColor)
      ..drawCircle(
        BiteMarkGeometry.dotCenter,
        BiteMarkGeometry.dotRadius,
        Paint()..color = dotColor,
      )
      ..restore();
  }

  @override
  bool shouldRepaint(_BiteMarkPainter oldDelegate) =>
      oldDelegate.ringColor != ringColor || oldDelegate.dotColor != dotColor;
}

/// The mark with the lowercase "bite" wordmark (Bricolage Grotesque Bold,
/// tight tracking).
///
/// Lockups from the design (B5): 36 mark + 26 wordmark in the welcome header,
/// 24 mark + 20 wordmark in an app bar.
class BiteLogo extends StatelessWidget {
  const BiteLogo({
    this.markSize = 36,
    this.wordmarkSize = 26,
    this.color = AppColors.ink,
    super.key,
  });

  /// The app-bar lockup.
  const BiteLogo.small({this.color = AppColors.ink, super.key})
    : markSize = 24,
      wordmarkSize = 20;

  final double markSize;
  final double wordmarkSize;
  final Color color;

  /// Wordmark style: Bricolage Grotesque Bold, letter-spacing -0.045em.
  static TextStyle wordmarkStyle(double fontSize, Color color) =>
      GoogleFonts.bricolageGrotesque(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        letterSpacing: fontSize * -0.045,
        height: 1,
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: AppConstants.appName,
      excludeSemantics: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: markSize * 0.28,
        children: [
          BiteMark(size: markSize, ringColor: color),
          Padding(
            // The design nudges the wordmark up to sit on the mark's centre.
            padding: EdgeInsets.only(bottom: wordmarkSize * 0.15),
            child: Text(
              AppConstants.wordmark,
              style: wordmarkStyle(wordmarkSize, color),
            ),
          ),
        ],
      ),
    );
  }
}
