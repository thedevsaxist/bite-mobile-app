import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_loader.dart';

/// Renders an [AsyncValue]: the bite loader while loading the first time,
/// an error message with a retry button, or [data].
///
/// Data stays on screen while refreshing.
class AsyncValueView<T> extends StatelessWidget {
  const AsyncValueView({
    required this.value,
    required this.data,
    this.onRetry,
    this.loadingMessage,
    super.key,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final VoidCallback? onRetry;

  /// Shown under the loader, e.g. "Loading your meals…".
  final String? loadingMessage;

  @override
  Widget build(BuildContext context) {
    return switch (value) {
      AsyncValue(:final T value, hasValue: true) => data(value),
      AsyncError(:final error) => _ErrorMessage(
        message: error is Failure
            ? error.message
            : const UnknownFailure().message,
        onRetry: onRetry,
      ),
      _ => AppLoadingView(message: loadingMessage),
    };
  }
}

class _ErrorMessage extends StatelessWidget {
  const _ErrorMessage({required this.message, this.onRetry});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppSpacing.screenPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpacing.sm,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            if (onRetry != null)
              TextButton(onPressed: onRetry, child: const Text('Try again')),
          ],
        ),
      ),
    );
  }
}
