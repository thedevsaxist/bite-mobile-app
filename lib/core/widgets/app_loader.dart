import 'dart:async';
import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/bite_mark.dart';

/// The "bite" loader from the design (artboard B6): the plate ring with a
/// bite out of it spins once every 1.2 s while the paprika dot pulses
/// 100% → 72% → 100% on the same beat.
///
/// With reduced motion the ring holds still and only the dot pulses, slower.
///
/// Sizes from the design: 20 in buttons, 48 in cards and pages, 88 on the
/// splash hand-off.
class AppLoader extends StatefulWidget {
  const AppLoader({
    this.size = 48,
    this.ringColor = AppColors.ink,
    this.dotColor = AppColors.paprika,
    this.semanticLabel = 'Loading',
    this.showAfter = Duration.zero,
    super.key,
  });

  final double size;
  final Color ringColor;
  final Color dotColor;
  final String semanticLabel;

  /// Shows nothing until this much time has passed, so quick loads don't
  /// flash a loader.
  final Duration showAfter;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader>
    with SingleTickerProviderStateMixin {
  static const _beat = Duration(milliseconds: 1200);
  static const _reducedMotionBeat = Duration(milliseconds: 2000);

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: _beat,
  );
  Timer? _showTimer;
  late bool _visible = widget.showAfter == Duration.zero;
  bool? _reduceMotion;

  @override
  void initState() {
    super.initState();
    if (!_visible) {
      _showTimer = Timer(widget.showAfter, () {
        if (mounted) setState(() => _visible = true);
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    if (reduceMotion != _reduceMotion) {
      _reduceMotion = reduceMotion;
      _controller
        ..duration = reduceMotion ? _reducedMotionBeat : _beat
        ..repeat();
    }
  }

  @override
  void dispose() {
    _showTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = Size.square(widget.size);
    if (!_visible) return SizedBox.fromSize(size: size);

    return Semantics(
      label: widget.semanticLabel,
      liveRegion: true,
      child: RepaintBoundary(
        child: CustomPaint(
          size: size,
          painter: _BitePainter(
            progress: _controller,
            spin: !(_reduceMotion ?? false),
            ringColor: widget.ringColor,
            dotColor: widget.dotColor,
          ),
        ),
      ),
    );
  }
}

class _BitePainter extends CustomPainter {
  _BitePainter({
    required this.progress,
    required this.spin,
    required this.ringColor,
    required this.dotColor,
  }) : super(repaint: progress);

  final Animation<double> progress;
  final bool spin;
  final Color ringColor;
  final Color dotColor;

  // Eases each turn so the bite swings past rather than ticking.
  static const _spinCurve = Cubic(0.6, 0.1, 0.4, 0.9);

  static final _pulse = TweenSequence([
    TweenSequenceItem(
      tween: Tween(
        begin: 1.0,
        end: 0.72,
      ).chain(CurveTween(curve: Curves.easeInOut)),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: 0.72,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.easeInOut)),
      weight: 1,
    ),
  ]);

  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..save()
      ..scale(size.width / 100, size.height / 100);

    // Ring
    canvas.save();
    if (spin) {
      final turns = _spinCurve.transform(progress.value);
      canvas
        ..translate(50, 50)
        ..rotate(turns * 2 * math.pi)
        ..translate(-50, -50);
    }
    canvas
      ..drawPath(BiteMarkGeometry.ring, Paint()..color = ringColor)
      ..restore();

    // Dot
    canvas.drawCircle(
      BiteMarkGeometry.dotCenter,
      BiteMarkGeometry.dotRadius * _pulse.transform(progress.value),
      Paint()..color = dotColor,
    );

    canvas.restore();
  }

  @override
  bool shouldRepaint(_BitePainter oldDelegate) =>
      oldDelegate.spin != spin ||
      oldDelegate.ringColor != ringColor ||
      oldDelegate.dotColor != dotColor;
}

/// A centred 48px [AppLoader] for whole pages or cards, with an optional
/// message.
///
/// Per the design: nothing shows for the first 300 ms, and after 10 s a short
/// status line is added.
class AppLoadingView extends StatefulWidget {
  const AppLoadingView({
    this.message,
    this.slowMessage = 'This is taking longer than usual…',
    super.key,
  });

  final String? message;
  final String slowMessage;

  static const showAfter = Duration(milliseconds: 300);
  static const slowAfter = Duration(seconds: 10);

  @override
  State<AppLoadingView> createState() => _AppLoadingViewState();
}

class _AppLoadingViewState extends State<AppLoadingView> {
  Timer? _slowTimer;
  bool _isSlow = false;

  @override
  void initState() {
    super.initState();
    _slowTimer = Timer(AppLoadingView.slowAfter, () {
      if (mounted) setState(() => _isSlow = true);
    });
  }

  @override
  void dispose() {
    _slowTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final message = _isSlow ? widget.slowMessage : widget.message;

    return Center(
      child: Padding(
        padding: AppSpacing.screenPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpacing.sm,
          children: [
            AppLoader(
              semanticLabel: widget.message ?? 'Loading',
              showAfter: AppLoadingView.showAfter,
            ),
            if (message != null)
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
