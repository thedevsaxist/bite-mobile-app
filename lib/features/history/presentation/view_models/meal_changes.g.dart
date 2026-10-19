// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_changes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Bumped whenever a meal is saved, edited or disputed. View models that
/// show meals or intake (Home, History) watch it to reload.

@ProviderFor(MealChanges)
final mealChangesProvider = MealChangesProvider._();

/// Bumped whenever a meal is saved, edited or disputed. View models that
/// show meals or intake (Home, History) watch it to reload.
final class MealChangesProvider extends $NotifierProvider<MealChanges, int> {
  /// Bumped whenever a meal is saved, edited or disputed. View models that
  /// show meals or intake (Home, History) watch it to reload.
  MealChangesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mealChangesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mealChangesHash();

  @$internal
  @override
  MealChanges create() => MealChanges();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$mealChangesHash() => r'3958d9e2e9bb57c2a5ecd0c1a3436a316d229dbc';

/// Bumped whenever a meal is saved, edited or disputed. View models that
/// show meals or intake (Home, History) watch it to reload.

abstract class _$MealChanges extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
