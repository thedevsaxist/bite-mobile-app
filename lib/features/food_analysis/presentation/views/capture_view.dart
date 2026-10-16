import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/capture_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/widgets/viewfinder.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// 05 Capture photo.
class CaptureView extends ConsumerStatefulWidget {
  const CaptureView({super.key});

  @override
  ConsumerState<CaptureView> createState() => _CaptureViewState();
}

class _CaptureViewState extends ConsumerState<CaptureView> {
  @override
  void initState() {
    super.initState();
    // A fresh session every time the camera opens.
    Future.microtask(
      () => ref.read(scanSessionViewModelProvider.notifier).startNewScan(),
    );
  }

  Future<void> _continueWith(Future<bool> Function() getPhoto) async {
    final gotPhoto = await getPhoto();
    if (gotPhoto && mounted) await context.push(AppRoutes.mealDetails);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(captureViewModelProvider);
    final viewModel = ref.read(captureViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.cameraBackground,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.xs,
              AppSpacing.lg,
              AppSpacing.xl,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.lg,
              children: [
                Row(
                  children: [
                    const AppIconButton.close(
                      style: AppIconButtonStyle.dark,
                      semanticLabel: 'Close camera',
                    ),
                    Expanded(
                      child: Text(
                        'Scan a meal',
                        textAlign: TextAlign.center,
                        style: textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    AppIconButton(
                      icon: state.flashOn
                          ? AppIcons.flashOn
                          : AppIcons.flashOff,
                      semanticLabel: state.flashOn ? 'Flash on' : 'Flash off',
                      style: AppIconButtonStyle.dark,
                      onPressed: viewModel.toggleFlash,
                    ),
                  ],
                ),
                // TODO: pass the CameraPreview once CaptureViewModel creates
                // the CameraController.
                const Expanded(child: Viewfinder()),
                Text(
                  'Good light and a top-down angle give the best estimate.',
                  textAlign: TextAlign.center,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.cameraHint,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: _GalleryButton(
                          onPressed: () =>
                              _continueWith(viewModel.pickFromGallery),
                        ),
                      ),
                    ),
                    _ShutterButton(
                      onPressed: state.isCapturing
                          ? null
                          : () => _continueWith(viewModel.takePhoto),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GalleryButton extends StatelessWidget {
  const _GalleryButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Choose from gallery',
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 6,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(AppRadii.input),
              ),
              child: const Icon(AppIcons.gallery, color: Colors.white),
            ),
            Text(
              'Gallery',
              style: Theme.of(context).textTheme.labelSmall
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShutterButton extends StatelessWidget {
  const _ShutterButton({required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Take photo',
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
          ),
          child: Container(
            width: 62,
            height: 62,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
