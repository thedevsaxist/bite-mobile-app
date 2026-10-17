import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:calorie_estimator/core/widgets/app_loader.dart';
import 'package:calorie_estimator/core/widgets/bite_mark.dart';
import 'package:calorie_estimator/features/onboarding/presentation/view_models/splash_view_model.dart';

/// Picks up from the native launch screen (design B3/B4) with the same
/// layout, so the hand-off is invisible. If start-up takes longer than
/// 300 ms, the mark gives way to the 88px loader (design B6).
class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  Timer? _slowTimer;
  bool _isSlow = false;

  @override
  void initState() {
    super.initState();
    _slowTimer = Timer(AppLoadingView.showAfter, () {
      if (mounted) setState(() => _isSlow = true);
    });
    ref.listenManual(splashViewModelProvider, (_, next) {
      switch (next) {
        case AsyncData(:final value):
          _goTo(value);
        case AsyncError():
          // TODO: surface start-up errors once there is real start-up work.
          _goTo(StartDestination.welcome);
        default:
          break;
      }
    }, fireImmediately: true);
  }

  void _goTo(StartDestination destination) {
    _slowTimer?.cancel();
    // Navigate after this frame; listenManual can fire during build.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.go(switch (destination) {
        StartDestination.welcome => AppRoutes.welcome,
        StartDestination.home => AppRoutes.home,
      });
    });
  }

  @override
  void dispose() {
    _slowTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isIos = isCupertinoPlatform(context);

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.night,
        body: Stack(
          children: [
            Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: _isSlow
                    ? const AppLoader(
                        size: 88,
                        ringColor: AppColors.plate,
                        semanticLabel: 'Starting ${AppConstants.appName}',
                      )
                    : BiteMark(
                        // Matches the native splash: 128 on iOS, 160 on
                        // Android 12+.
                        size: isIos ? 128 : 160,
                        ringColor: AppColors.plate,
                        semanticLabel: AppConstants.appName,
                      ),
              ),
            ),
            if (isIos)
              Positioned(
                left: 0,
                right: 0,
                bottom: 56,
                child: ExcludeSemantics(
                  child: Text(
                    AppConstants.wordmark,
                    textAlign: TextAlign.center,
                    style: BiteLogo.wordmarkStyle(26, AppColors.plate),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
