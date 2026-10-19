import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_record.freezed.dart';

enum MealType {
  breakfast('Breakfast'),
  lunch('Lunch'),
  dinner('Dinner'),
  snack('Snack');

  const MealType(this.label);

  final String label;

  /// The meal a time of day most likely belongs to.
  static MealType forTime(DateTime time) => switch (time.hour) {
    >= 5 && < 11 => breakfast,
    >= 11 && < 16 => lunch,
    >= 16 && < 22 => dinner,
    _ => snack,
  };
}

/// The units the backend calculates with. A serving is the reference food's
/// typical serving (e.g. jollof rice: 300 g, "1 plate").
enum PortionUnit {
  grams('g', 'Grams', 10),
  millilitres('ml', 'ml', 10),
  servings('servings', 'Servings', 0.5);

  const PortionUnit(this.symbol, this.label, this.step);

  /// Shown after the quantity, e.g. "150 g".
  final String symbol;

  /// Shown on the unit picker.
  final String label;

  /// How much the − / + buttons change the quantity by.
  final double step;

  /// "150 g", "1 serving", "1.5 servings".
  String format(double quantity) {
    final amount = quantity == quantity.roundToDouble()
        ? '${quantity.round()}'
        : quantity.toStringAsFixed(1);
    return switch (this) {
      servings => '$amount ${quantity == 1 ? 'serving' : 'servings'}',
      _ => '$amount $symbol',
    };
  }
}

/// Calories (kcal) and macros (g). Estimates, kept to one decimal place as
/// the backend calculates them.
@freezed
abstract class Nutrients with _$Nutrients {
  const factory Nutrients({
    @Default(0) double calories,
    @Default(0) double protein,
    @Default(0) double carbohydrates,
    @Default(0) double fat,
  }) = _Nutrients;
  const Nutrients._();

  static const zero = Nutrients();

  Nutrients operator +(Nutrients other) => Nutrients(
    calories: calories + other.calories,
    protein: protein + other.protein,
    carbohydrates: carbohydrates + other.carbohydrates,
    fat: fat + other.fat,
  );

  Nutrients scale(double factor) => Nutrients(
    calories: calories * factor,
    protein: protein * factor,
    carbohydrates: carbohydrates * factor,
    fat: fat * factor,
  );
}

/// A food in the nutritional reference data that an item is matched to.
@freezed
abstract class FoodReference with _$FoodReference {
  const factory FoodReference({
    required String id,
    required String key,
    required String name,
  }) = _FoodReference;
}

/// One food on the plate: an item the AI recognised, or the user's
/// correction of it.
@freezed
abstract class MealItem with _$MealItem {
  const factory MealItem({
    required String id,

    /// The recognised item this is (or corrects); null for a food the user
    /// added.
    String? recognisedItemId,
    required String name,

    /// The AI's wording, e.g. "1 plate". Null once the portion is edited.
    String? portionDescription,

    /// Null when the AI couldn't estimate the amount of an unmatched food.
    double? quantity,
    PortionUnit? unit,

    /// Null when the food isn't in the reference data.
    FoodReference? reference,

    /// Null without reference data: no calories are made up.
    Nutrients? nutrients,
    @Default(false) bool wasModified,
  }) = _MealItem;
  const MealItem._();

  bool get hasPortion => quantity != null && unit != null;

  /// The name with a capital first letter (the AI writes "jollof rice").
  String get displayName =>
      name.isEmpty ? name : name[0].toUpperCase() + name.substring(1);

  String get portionLabel =>
      portionDescription ??
      (hasPortion ? unit!.format(quantity!) : 'Amount not known');
}

enum MealStatus {
  saved,

  /// The user said the analysis was wrong; left out of the intake totals
  /// until they correct or confirm the meal.
  disputed,
}

/// A meal saved to the user's food-intake history (report §3.5.3,
/// "Meal Records"): their final version of an analysed meal.
@freezed
abstract class MealRecord with _$MealRecord {
  const factory MealRecord({
    required String id,
    required String analysisId,
    required DateTime eatenAt,
    @Default(MealStatus.saved) MealStatus status,
    @Default(false) bool validatedByUser,
    @Default(Nutrients.zero) Nutrients totals,
    @Default([]) List<MealItem> items,

    /// A signed link to the photo; only set when loading one meal.
    String? imageUrl,
  }) = _MealRecord;
  const MealRecord._();

  bool get isDisputed => status == MealStatus.disputed;

  MealType get mealType => MealType.forTime(eatenAt);

  int get totalCalories => totals.calories.round();

  /// "Jollof rice, plantain, chicken".
  String get title {
    if (items.isEmpty) return 'Meal';
    final names = items.take(3).map((item) => item.name).join(', ');
    final more = items.length > 3 ? ' +${items.length - 3} more' : '';
    return names[0].toUpperCase() + names.substring(1) + more;
  }
}

/// Estimated calories eaten on one day, for the history chart.
@freezed
abstract class DailyIntake with _$DailyIntake {
  const factory DailyIntake({required DateTime date, required int calories}) =
      _DailyIntake;
}
