import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';

part 'edit_item_view_model.freezed.dart';
part 'edit_item_view_model.g.dart';

@freezed
abstract class EditItemState with _$EditItemState {
  const factory EditItemState({
    required String name,
    required double quantity,
    required PortionUnit unit,
    required double caloriesPerUnit,
  }) = _EditItemState;
  const EditItemState._();

  int get estimatedCalories => (quantity * caloriesPerUnit).round();
}

/// 09 Edit item — the bottom sheet for correcting one recognised food.
@riverpod
class EditItemViewModel extends _$EditItemViewModel {
  @override
  EditItemState build(RecognisedFoodItem item) => EditItemState(
    name: item.name,
    quantity: item.quantity,
    unit: item.unit,
    caloriesPerUnit: item.quantity == 0 ? 0 : item.calories / item.quantity,
  );

  void setName(String value) => state = state.copyWith(name: value);

  void increment() =>
      state = state.copyWith(quantity: state.quantity + state.unit.step);

  void decrement() {
    final next = state.quantity - state.unit.step;
    if (next > 0) state = state.copyWith(quantity: next);
  }

  void setUnit(PortionUnit unit) {
    // TODO: convert the quantity and caloriesPerUnit to the new unit using
    // the nutritional reference data (e.g. slices → grams).
    state = state.copyWith(unit: unit);
  }

  /// The edited item, ready to hand back to the scan session.
  RecognisedFoodItem buildUpdatedItem() {
    // TODO: the backend should recalculate protein / carbs / fat too; they are
    // scaled proportionally here as a preview.
    final scale = item.calories == 0
        ? 1.0
        : state.estimatedCalories / item.calories;
    return item.copyWith(
      name: state.name.trim().isEmpty ? item.name : state.name.trim(),
      quantity: state.quantity,
      unit: state.unit,
      portionDescription:
          '${_formatQuantity(state.quantity)} '
          '${state.unit.symbol}',
      calories: state.estimatedCalories,
      proteinGrams: (item.proteinGrams * scale).round(),
      carbsGrams: (item.carbsGrams * scale).round(),
      fatGrams: (item.fatGrams * scale).round(),
      wasModified: true,
    );
  }

  static String _formatQuantity(double value) =>
      value == value.roundToDouble() ? '${value.round()}' : '$value';
}
