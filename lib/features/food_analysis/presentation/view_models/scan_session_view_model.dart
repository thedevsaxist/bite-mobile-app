import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'scan_session_view_model.freezed.dart';
part 'scan_session_view_model.g.dart';

enum AnalysisOutcome { success, unreadablePhoto, cancelled }

@freezed
abstract class ScanSessionState with _$ScanSessionState {
  const factory ScanSessionState({
    /// Local path of the captured or picked photo.
    String? imagePath,

    /// Optional context from the Meal details screen.
    @Default('') String description,
    @Default(MealPortion.medium) MealPortion portion,
    @Default('') String notes,

    /// Current step while analysing; null before analysis starts.
    AnalysisStep? step,
    FoodAnalysis? analysis,
    @Default(MealType.lunch) MealType mealType,

    /// Mirrors the "Save results automatically" setting (on by default).
    @Default(true) bool autoSave,
    @Default(false) bool isSaved,
    @Default(false) bool isDisputed,

    /// Used for "40% of your day".
    @Default(2150) int dailyReference,
  }) = _ScanSessionState;
}

/// State shared by the whole scan flow: Capture → Meal details → Analysing →
/// Result → Edit item. Kept alive across those screens; [startNewScan] resets
/// it.
@Riverpod(keepAlive: true)
class ScanSessionViewModel extends _$ScanSessionViewModel {
  var _cancelled = false;

  @override
  ScanSessionState build() {
    // TODO: read autoSave from the settings repository and dailyReference
    // from the profile.
    return const ScanSessionState();
  }

  void startNewScan() => state = ScanSessionState(
    autoSave: state.autoSave,
    dailyReference: state.dailyReference,
  );

  void setImage(String path) => state = state.copyWith(imagePath: path);

  void setDescription(String value) =>
      state = state.copyWith(description: value);

  void setPortion(MealPortion portion) =>
      state = state.copyWith(portion: portion);

  void setNotes(String value) => state = state.copyWith(notes: value);

  /// Sends the photo and details for analysis, updating [ScanSessionState.step]
  /// as it goes.
  Future<AnalysisOutcome> analyse() async {
    _cancelled = false;
    // TODO: replace the simulated progress below with AnalyseFoodUseCase(
    // imagePath, description, portion, notes). Map an unreadable or invalid
    // image failure to AnalysisOutcome.unreadablePhoto and other failures to
    // an error message. If autoSave is on, the backend saves the meal.
    for (final step in AnalysisStep.values.take(3)) {
      state = state.copyWith(step: step);
      await Future<void>.delayed(const Duration(milliseconds: 900));
      if (_cancelled) return AnalysisOutcome.cancelled;
    }

    state = state.copyWith(
      step: AnalysisStep.done,
      analysis: _sampleAnalysis,
      mealType: MealType.forTime(DateTime.now()),
      isSaved: state.autoSave,
      isDisputed: false,
    );
    return AnalysisOutcome.success;
  }

  void cancelAnalysis() {
    // TODO: cancel the in-flight request (Dio CancelToken).
    _cancelled = true;
    state = state.copyWith(step: null);
  }

  /// "Looks right, save it" — when auto-save is off.
  Future<void> saveResult() async {
    // TODO: call SaveMealUseCase(analysis) and mark the record as validated by
    // the user.
    state = state.copyWith(isSaved: true);
  }

  /// "This is wrong".
  Future<void> disputeResult() async {
    // TODO: call DisputeAnalysisUseCase(analysis.id).
    state = state.copyWith(isDisputed: true);
  }

  void updateItem(RecognisedFoodItem item) {
    // TODO: send the edit to the backend so nutrition is recalculated from
    // the nutritional reference data.
    final analysis = state.analysis;
    if (analysis == null) return;
    state = state.copyWith(
      analysis: analysis.copyWith(
        items: [
          for (final existing in analysis.items)
            existing.id == item.id ? item : existing,
        ],
      ),
    );
  }

  void removeItem(String itemId) {
    // TODO: persist the removal if the meal is already saved.
    final analysis = state.analysis;
    if (analysis == null) return;
    state = state.copyWith(
      analysis: analysis.copyWith(
        items: analysis.items.where((i) => i.id != itemId).toList(),
      ),
    );
  }

  /// Opens a meal from Home or History on the Result screen.
  Future<void> openSavedMeal(String mealId) async {
    // TODO: load the meal record via GetMealUseCase(mealId). Shows the sample
    // analysis for now.
    state = ScanSessionState(
      analysis: _sampleAnalysis,
      isSaved: true,
      autoSave: state.autoSave,
      dailyReference: state.dailyReference,
    );
  }

  static const _sampleAnalysis = FoodAnalysis(
    id: 'sample-analysis',
    items: [
      RecognisedFoodItem(
        id: 'jollof',
        name: 'Jollof rice',
        portionDescription: 'About 1½ cups',
        quantity: 1.5,
        unit: PortionUnit.cups,
        calories: 420,
        proteinGrams: 8,
        carbsGrams: 78,
        fatGrams: 9,
      ),
      RecognisedFoodItem(
        id: 'plantain',
        name: 'Fried plantain',
        portionDescription: 'About 6 slices',
        quantity: 6,
        unit: PortionUnit.slices,
        calories: 230,
        proteinGrams: 2,
        carbsGrams: 34,
        fatGrams: 11,
      ),
      RecognisedFoodItem(
        id: 'chicken',
        name: 'Grilled chicken',
        portionDescription: '1 thigh',
        quantity: 1,
        unit: PortionUnit.pieces,
        calories: 210,
        proteinGrams: 28,
        carbsGrams: 0,
        fatGrams: 8,
      ),
    ],
  );
}
