import 'dart:async';

// Only Right: fpdart's top-level `unit` would shadow the `unit` field.
import 'package:fpdart/fpdart.dart' show Right;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/get_food_usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/search_foods_usecase.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'edit_item_view_model.freezed.dart';
part 'edit_item_view_model.g.dart';

@freezed
abstract class EditItemState with _$EditItemState {
  const factory EditItemState({
    required String name,
    required double quantity,
    required PortionUnit unit,

    /// The reference food the nutrients come from; null when unmatched.
    FoodReference? reference,

    /// [reference]'s values, loaded for the estimate preview.
    NutritionFood? food,

    /// Reference foods matching what the user typed.
    @Default([]) List<NutritionFood> suggestions,

    /// The nutrients the item had when the sheet opened, for scaling.
    Nutrients? originalNutrients,
    double? originalQuantity,
    PortionUnit? originalUnit,
  }) = _EditItemState;
  const EditItemState._();

  /// A serving only means something for a reference food.
  List<PortionUnit> get units => reference == null
      ? const [PortionUnit.grams, PortionUnit.millilitres]
      : PortionUnit.values;

  /// A preview; the backend recalculates when the change is saved.
  Nutrients? get estimate {
    final food = this.food;
    if (food != null && food.id == reference?.id) {
      return food.nutrientsFor(quantity, unit);
    }
    // Scale the item's own values while the food details load, or for an
    // item without reference data that has calories.
    final original = originalNutrients;
    final originalQuantity = this.originalQuantity;
    if (original != null &&
        originalQuantity != null &&
        originalQuantity > 0 &&
        unit == originalUnit) {
      return original.scale(quantity / originalQuantity);
    }
    return null;
  }
}

/// 09 Edit item — the bottom sheet for correcting one food.
@riverpod
class EditItemViewModel extends _$EditItemViewModel {
  Timer? _searchDebounce;

  @override
  EditItemState build(MealItem item) {
    ref.onDispose(() => _searchDebounce?.cancel());
    final reference = item.reference;
    if (reference != null) Future.microtask(() => _loadFood(reference.id));

    return EditItemState(
      name: item.displayName,
      // An unmatched, unweighed food starts at 100 g for the user to adjust.
      quantity: item.quantity ?? (reference == null ? 100 : 1),
      unit:
          item.unit ??
          (reference == null ? PortionUnit.grams : PortionUnit.servings),
      reference: reference,
      originalNutrients: item.nutrients,
      originalQuantity: item.quantity,
      originalUnit: item.unit,
    );
  }

  /// Typing searches the reference data for the right food.
  void setName(String value) {
    state = state.copyWith(name: value);
    _searchDebounce?.cancel();
    final query = value.trim();
    if (query.length < 2 ||
        query.toLowerCase() == state.reference?.name.toLowerCase()) {
      state = state.copyWith(suggestions: const []);
      return;
    }
    _searchDebounce = Timer(
      const Duration(milliseconds: 300),
      () => _search(query),
    );
  }

  /// Matches the item to [food]: its name and nutrients come from it.
  void selectFood(NutritionFood food) {
    _searchDebounce?.cancel();
    final unit = state.unit;
    state = state.copyWith(
      name: food.name,
      reference: food.reference,
      food: food,
      suggestions: const [],
      // Nutrients now come from the food, not the old values.
      originalNutrients: null,
    );
    if (!state.units.contains(unit)) setUnit(PortionUnit.grams);
  }

  void increment() =>
      state = state.copyWith(quantity: state.quantity + state.unit.step);

  void decrement() {
    final next = state.quantity - state.unit.step;
    if (next > 0) state = state.copyWith(quantity: next);
  }

  /// Converts the amount, e.g. 1 serving of jollof rice → 300 g.
  void setUnit(PortionUnit unit) {
    if (unit == state.unit) return;
    final food = state.food;
    final converted = food == null
        ? (unit == PortionUnit.servings ? 1.0 : state.quantity)
        : food.convert(state.quantity, state.unit, unit);
    state = state.copyWith(unit: unit, quantity: _tidy(converted, unit));
  }

  /// The edited item, ready to hand back to the scan session.
  MealItem buildUpdatedItem() {
    final name = state.name.trim().isEmpty ? item.name : state.name.trim();
    final samePortion =
        state.quantity == item.quantity && state.unit == item.unit;
    final unchanged =
        samePortion &&
        name.toLowerCase() == item.name.toLowerCase() &&
        state.reference == item.reference;
    if (unchanged) return item;

    return item.copyWith(
      name: name,
      quantity: state.quantity,
      unit: state.unit,
      // The AI's wording no longer fits a changed amount.
      portionDescription: samePortion ? item.portionDescription : null,
      reference: state.reference,
      nutrients: state.estimate,
      wasModified: true,
    );
  }

  Future<void> _loadFood(String id) async {
    final result = await ref.read(getFoodUseCaseProvider).call(id);
    if (!ref.mounted) return;
    if (result case Right(value: final food)) {
      state = state.copyWith(food: food);
    }
  }

  Future<void> _search(String query) async {
    final result = await ref.read(searchFoodsUseCaseProvider).call(query);
    if (!ref.mounted || state.name.trim() != query) return;
    state = state.copyWith(suggestions: result.getOrElse((_) => const []));
  }

  /// Whole grams and millilitres; servings to the nearest half.
  static double _tidy(double quantity, PortionUnit unit) {
    final tidied = unit == PortionUnit.servings
        ? (quantity * 2).round() / 2
        : quantity.roundToDouble();
    return tidied > 0 ? tidied : unit.step;
  }
}
