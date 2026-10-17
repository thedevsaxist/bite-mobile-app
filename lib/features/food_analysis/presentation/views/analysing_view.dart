import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';
import 'package:calorie_estimator/core/widgets/app_loader.dart';

/// 07 Analysing. Starts the analysis on open and moves on to the result or
/// the "couldn't analyse" screen when it finishes.
class AnalysingView extends ConsumerStatefulWidget {
  const AnalysingView({super.key});

  @override
  ConsumerState<AnalysingView> createState() => _AnalysingViewState();
}

class _AnalysingViewState extends ConsumerState<AnalysingView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(_analyse);
  }

  Future<void> _analyse() async {
    final outcome = await ref
        .read(scanSessionViewModelProvider.notifier)
        .analyse();
    if (!mounted) return;
    switch (outcome) {
      case AnalysisOutcome.success:
        context.pushReplacement(AppRoutes.result);
      case AnalysisOutcome.unreadablePhoto:
        context.pushReplacement(AppRoutes.analysisError);
      case AnalysisOutcome.cancelled:
        break;
    }
  }

  void _cancel() {
    ref.read(scanSessionViewModelProvider.notifier).cancelAnalysis();
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final step = ref.watch(scanSessionViewModelProvider.select((s) => s.step));
    final textTheme = Theme.of(context).textTheme;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _cancel();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.xl,
              AppSpacing.xl,
              AppSpacing.lg,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 28,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 28,
                      children: [
                        const SizedBox(height: AppSpacing.md),
                        const _ScanningPhoto(),
                        Semantics(
                          liveRegion: true,
                          child: Column(
                            spacing: 6,
                            children: [
                              Text(
                                'Analysing your meal…',
                                textAlign: TextAlign.center,
                                style: textTheme.headlineSmall,
                              ),
                              Text(
                                'This usually takes a few seconds.',
                                textAlign: TextAlign.center,
                                style: textTheme.bodyMedium?.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        _StepList(current: step),
                      ],
                    ),
                  ),
                ),
                SecondaryButton(
                  label: 'Cancel',
                  height: AppSizes.inputHeight,
                  onPressed: _cancel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The photo with a glowing line sweeping over it.
class _ScanningPhoto extends StatefulWidget {
  const _ScanningPhoto();

  @override
  State<_ScanningPhoto> createState() => _ScanningPhotoState();
}

class _ScanningPhotoState extends State<_ScanningPhoto>
    with SingleTickerProviderStateMixin {
  static const _size = 220.0;

  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1600),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    // TODO: show the user's photo instead of the illustration.
    return SizedBox.square(
      dimension: _size,
      child: MealPhotoPlaceholder(
        plateSize: 168,
        borderRadius: BorderRadius.circular(28),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) => Positioned(
            left: 0,
            right: 0,
            top: reduceMotion
                ? _size / 2
                : Curves.easeInOut.transform(_controller.value) * (_size - 3),
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: AppColors.scanLine,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.scanLine.withValues(alpha: 0.45),
                    blurRadius: 18,
                    spreadRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StepList extends StatelessWidget {
  const _StepList({required this.current});

  final AnalysisStep? current;

  @override
  Widget build(BuildContext context) {
    const steps = [
      AnalysisStep.checkingPhoto,
      AnalysisStep.findingFoods,
      AnalysisStep.estimatingCalories,
    ];
    final currentIndex = current == null ? -1 : current!.index;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.backgroundMuted,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        spacing: 14,
        children: [
          for (final step in steps)
            _StepRow(
              label: step.label,
              status: switch (step.index) {
                final i when i < currentIndex => _StepStatus.done,
                final i when i == currentIndex => _StepStatus.active,
                _ => _StepStatus.pending,
              },
            ),
        ],
      ),
    );
  }
}

enum _StepStatus { done, active, pending }

class _StepRow extends StatelessWidget {
  const _StepRow({required this.label, required this.status});

  final String label;
  final _StepStatus status;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final indicator = switch (status) {
      _StepStatus.done => Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: const Icon(AppIcons.check, size: 16, color: Colors.white),
      ),
      _StepStatus.active => const AppLoader(size: 28),
      _StepStatus.pending => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.pendingStep, width: 2),
        ),
      ),
    };

    return Semantics(
      label: switch (status) {
        _StepStatus.done => '$label, done',
        _StepStatus.active => '$label, in progress',
        _StepStatus.pending => '$label, waiting',
      },
      excludeSemantics: true,
      child: Row(
        spacing: AppSpacing.sm,
        children: [
          SizedBox.square(dimension: 28, child: indicator),
          Text(
            label,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: status == _StepStatus.active
                  ? FontWeight.w700
                  : FontWeight.w600,
              color: status == _StepStatus.pending
                  ? AppColors.textSecondary
                  : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
