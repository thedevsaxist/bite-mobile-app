// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_item_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 09 Edit item — the bottom sheet for correcting one recognised food.

@ProviderFor(EditItemViewModel)
final editItemViewModelProvider = EditItemViewModelFamily._();

/// 09 Edit item — the bottom sheet for correcting one recognised food.
final class EditItemViewModelProvider
    extends $NotifierProvider<EditItemViewModel, EditItemState> {
  /// 09 Edit item — the bottom sheet for correcting one recognised food.
  EditItemViewModelProvider._({
    required EditItemViewModelFamily super.from,
    required RecognisedFoodItem super.argument,
  }) : super(
         retry: null,
         name: r'editItemViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editItemViewModelHash();

  @override
  String toString() {
    return r'editItemViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditItemViewModel create() => EditItemViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditItemState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditItemState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditItemViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editItemViewModelHash() => r'8ff0fd37fcde7d38724c06f2e96d7df6dae29695';

/// 09 Edit item — the bottom sheet for correcting one recognised food.

final class EditItemViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          EditItemViewModel,
          EditItemState,
          EditItemState,
          EditItemState,
          RecognisedFoodItem
        > {
  EditItemViewModelFamily._()
    : super(
        retry: null,
        name: r'editItemViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 09 Edit item — the bottom sheet for correcting one recognised food.

  EditItemViewModelProvider call(RecognisedFoodItem item) =>
      EditItemViewModelProvider._(argument: item, from: this);

  @override
  String toString() => r'editItemViewModelProvider';
}

/// 09 Edit item — the bottom sheet for correcting one recognised food.

abstract class _$EditItemViewModel extends $Notifier<EditItemState> {
  late final _$args = ref.$arg as RecognisedFoodItem;
  RecognisedFoodItem get item => _$args;

  EditItemState build(RecognisedFoodItem item);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditItemState, EditItemState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditItemState, EditItemState>,
              EditItemState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
