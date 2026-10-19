import 'dart:async';

/// Lets a view model cancel a running request without the domain knowing
/// about Dio. A cancelled request fails with `CancelledFailure`.
class Cancellation {
  final _cancelled = Completer<void>();

  bool get isCancelled => _cancelled.isCompleted;

  /// Completes when [cancel] is called.
  Future<void> get whenCancelled => _cancelled.future;

  void cancel() {
    if (!isCancelled) _cancelled.complete();
  }
}
