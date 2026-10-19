import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/usecase/cancellation.dart';
import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/analyse_meal_usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/dispute_analysis_usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/save_analysis_as_meal_usecase.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_meal_usecase.dart';
import 'package:calorie_estimator/features/history/domain/usecases/update_meal_items_usecase.dart';
import 'package:calorie_estimator/features/history/presentation/view_models/meal_changes.dart';
import 'package:calorie_estimator/features/profile/domain/usecases/get_profile_usecase.dart';

part 'scan_session_view_model.freezed.dart';
part 'scan_session_view_model.g.dart';

enum AnalysisOutcome { success, unreadablePhoto, failed, cancelled }

@freezed
abstract class ScanSessionState with _$ScanSessionState {
  const factory ScanSessionState({
    /// Local path of the captured or picked photo.
    String? imagePath,

    /// Optional context from the Meal details screen.
    @Default('') String description,
    @Default(MealPortion.medium) MealPortion portion,
    @Default('') String notes,

    /// "Skip and analyse": send the photo without any details.
    @Default(false) bool skipDetails,

    /// Current step while analysing; [AnalysisStep.done] after a scan.
    AnalysisStep? step,

    /// The analysis behind the result (also set for a meal opened from
    /// Home or History).
    String? analysisId,

    /// The saved meal; null until saved when auto-save is off.
    String? mealId,
    @Default([]) List<MealItem> items,
    DateTime? eatenAt,

    /// A signed link to the stored photo, for meals opened from history.
    String? imageUrl,
    @Default(false) bool isDisputed,

    /// Edits made before the result is saved (auto-save off).
    @Default(false) bool hasUnsavedEdits,

    /// Used for "40% of your day"; null without a profile.
    int? dailyReference,

    /// Loading a saved meal opened from Home or History.
    @Default(false) bool isLoading,
    String? loadError,

    /// Saving, disputing or applying an edit.
    @Default(false) bool isBusy,

    /// A one-off message for a snack bar.
    String? errorMessage,

    /// Why the photo couldn't be analysed, for the "Couldn't analyse"
    /// screen.
    String? unreadableReason,
  }) = _ScanSessionState;
  const ScanSessionState._();

  bool get isSaved => mealId != null;

  bool get hasResult => analysisId != null;

  /// Totals of the matched items; unmatched ones have no calories.
  Nutrients get totals => items.fold(
    Nutrients.zero,
    (sum, item) => sum + (item.nutrients ?? Nutrients.zero),
  );

  int get unmatchedItemCount =>
      items.where((item) => item.nutrients == null).length;

  MealType get mealType => MealType.forTime(eatenAt ?? DateTime.now());
}

/// State shared by the whole scan flow: Capture → Meal details → Analysing →
/// Result → Edit item. Kept alive across those screens; [startNewScan] resets
/// it.
@Riverpod(keepAlive: true)
class ScanSessionViewModel extends _$ScanSessionViewModel {
  Cancellation? _cancellation;
  final _stepTimers = <Timer>[];

  @override
  ScanSessionState build() {
    ref.onDispose(_stopSteps);
    return const ScanSessionState();
  }

  void startNewScan() =>
      state = ScanSessionState(dailyReference: state.dailyReference);

  void setImage(String path) => state = state.copyWith(imagePath: path);

  /// Picks a photo from the gallery as JPEG (iPhone photos are HEIC, which
  /// the backend doesn't accept). Returns `false` if the user cancels.
  Future<bool> pickFromGallery() async {
    final XFile? photo;
    try {
      photo = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 90,
        maxWidth: 2048,
        maxHeight: 2048,
      );
    } catch (e) {
      debugPrint('Gallery: $e');
      _showError("Couldn't open your photos. Check the app's photo access.");
      return false;
    }
    if (photo == null) return false;
    setImage(photo.path);
    return true;
  }

  void setDescription(String value) =>
      state = state.copyWith(description: value, skipDetails: false);

  void setPortion(MealPortion portion) =>
      state = state.copyWith(portion: portion, skipDetails: false);

  void setNotes(String value) =>
      state = state.copyWith(notes: value, skipDetails: false);

  void skipDetails() => state = state.copyWith(skipDetails: true);

  /// Sends the photo and details for analysis, updating [ScanSessionState.step]
  /// as it goes. With auto-save on, the backend saves the meal straight away.
  Future<AnalysisOutcome> analyse() async {
    final imagePath = state.imagePath;
    if (imagePath == null) return AnalysisOutcome.unreadablePhoto;

    final cancellation = _cancellation = Cancellation();
    state = state.copyWith(
      step: AnalysisStep.checkingPhoto,
      errorMessage: null,
      unreadableReason: null,
    );
    _startSteps();
    unawaited(_loadDailyReference());

    final result = await ref.read(analyseMealUseCaseProvider).call((
      imagePath: imagePath,
      context: state.skipDetails ? null : _context(),
      cancellation: cancellation,
    ));
    _stopSteps();
    if (cancellation.isCancelled) return AnalysisOutcome.cancelled;

    switch (result) {
      case Right(value: final analysis):
        state = state.copyWith(
          step: AnalysisStep.done,
          analysisId: analysis.id,
          mealId: analysis.mealId,
          items: analysis.items,
          eatenAt: analysis.createdAt,
          imageUrl: analysis.imageUrl,
          isDisputed: analysis.isDisputed,
          hasUnsavedEdits: false,
        );
        if (analysis.mealId != null) _mealsChanged();
        return AnalysisOutcome.success;
      case Left(value: CancelledFailure()):
        return AnalysisOutcome.cancelled;
      case Left(value: final failure)
          when UnreadablePhotoCodes.all.contains(failure.code):
        state = state.copyWith(step: null, unreadableReason: failure.message);
        return AnalysisOutcome.unreadablePhoto;
      case Left(value: final failure):
        state = state.copyWith(step: null, errorMessage: failure.message);
        return AnalysisOutcome.failed;
    }
  }

  void cancelAnalysis() {
    _cancellation?.cancel();
    _stopSteps();
    state = state.copyWith(step: null);
  }

  /// "Looks right, save it" — when auto-save is off. Returns `true` once
  /// saved.
  Future<bool> saveResult() async {
    final analysisId = state.analysisId;
    if (analysisId == null || state.isSaved || state.isBusy) return false;
    if (state.hasUnsavedEdits && !_checkPortions(state.items)) return false;

    state = state.copyWith(isBusy: true, errorMessage: null);
    final result = await ref.read(saveAnalysisAsMealUseCaseProvider).call((
      analysisId: analysisId,
      // Unedited, the backend saves the AI result as it is.
      items: state.hasUnsavedEdits ? state.items : null,
    ));
    return _applyMeal(result);
  }

  /// "This is wrong". A saved meal stops counting towards the day until the
  /// user corrects it.
  Future<void> disputeResult() async {
    final analysisId = state.analysisId;
    if (analysisId == null || state.isBusy) return;

    state = state.copyWith(isBusy: true, errorMessage: null);
    final result = await ref
        .read(disputeAnalysisUseCaseProvider)
        .call(analysisId);
    switch (result) {
      case Right():
        state = state.copyWith(isBusy: false, isDisputed: true);
        if (state.isSaved) _mealsChanged();
      case Left(value: final failure):
        state = state.copyWith(isBusy: false);
        _showError(failure.message);
    }
  }

  /// Applies an edit from the Edit item sheet. A saved meal is updated on
  /// the backend, which recalculates the nutrients. Returns `true` on
  /// success.
  Future<bool> updateItem(MealItem item) => _changeItems([
    for (final existing in state.items)
      existing.id == item.id ? item : existing,
  ]);

  Future<bool> removeItem(String itemId) {
    if (state.items.length <= 1) {
      _showError(
        'A meal needs at least one item. If the result is wrong, tap '
        '"This is wrong" instead.',
      );
      return Future.value(false);
    }
    return _changeItems([
      for (final existing in state.items)
        if (existing.id != itemId) existing,
    ]);
  }

  /// Opens a meal from Home or History on the Result screen, which shows a
  /// loader until it arrives.
  Future<void> openSavedMeal(String mealId) async {
    state = ScanSessionState(
      mealId: mealId,
      isLoading: true,
      dailyReference: state.dailyReference,
    );
    unawaited(_loadDailyReference());

    final result = await ref.read(getMealUseCaseProvider).call(mealId);
    if (state.mealId != mealId) return; // Another meal was opened since.
    switch (result) {
      case Right(value: final meal):
        state = state.copyWith(
          isLoading: false,
          analysisId: meal.analysisId,
          items: meal.items,
          eatenAt: meal.eatenAt,
          imageUrl: meal.imageUrl,
          isDisputed: meal.isDisputed,
        );
      case Left(value: final failure):
        state = state.copyWith(isLoading: false, loadError: failure.message);
    }
  }

  Future<bool> _changeItems(List<MealItem> items) async {
    if (state.isBusy) return false;
    final mealId = state.mealId;
    if (mealId == null) {
      state = state.copyWith(items: items, hasUnsavedEdits: true);
      return true;
    }
    if (!_checkPortions(items)) return false;

    state = state.copyWith(isBusy: true, errorMessage: null);
    final result = await ref.read(updateMealItemsUseCaseProvider).call((
      mealId: mealId,
      items: items,
    ));
    return _applyMeal(result);
  }

  bool _applyMeal(Either<Failure, MealRecord> result) {
    switch (result) {
      case Right(value: final meal):
        state = state.copyWith(
          isBusy: false,
          mealId: meal.id,
          items: meal.items,
          isDisputed: meal.isDisputed,
          hasUnsavedEdits: false,
        );
        _mealsChanged();
        return true;
      case Left(value: final failure):
        state = state.copyWith(isBusy: false);
        _showError(failure.message);
        return false;
    }
  }

  /// The backend needs an amount for every item it saves. The AI leaves it
  /// out for a food it couldn't match or weigh.
  bool _checkPortions(List<MealItem> items) {
    final missing = items.where((item) => !item.hasPortion).firstOrNull;
    if (missing == null) return true;
    _showError(
      'Tap ${missing.displayName} and set how much you had before saving.',
    );
    return false;
  }

  /// The meal details as one note for the AI.
  String _context() => [
    if (state.description.trim().isNotEmpty)
      "What's on the plate: ${state.description.trim()}.",
    'Portion size: ${state.portion.label.toLowerCase()}.',
    if (state.notes.trim().isNotEmpty) 'Notes: ${state.notes.trim()}.',
  ].join(' ');

  /// The backend works through all three steps in one request, so the
  /// steps advance on a timer (roughly how long each part takes) and the
  /// last one waits for the response.
  void _startSteps() {
    _stopSteps();
    for (final (step, delay) in [
      (AnalysisStep.findingFoods, const Duration(milliseconds: 1500)),
      (AnalysisStep.estimatingCalories, const Duration(seconds: 5)),
    ]) {
      _stepTimers.add(Timer(delay, () => state = state.copyWith(step: step)));
    }
  }

  void _stopSteps() {
    for (final timer in _stepTimers) {
      timer.cancel();
    }
    _stepTimers.clear();
  }

  Future<void> _loadDailyReference() async {
    final result = await ref
        .read(getProfileUseCaseProvider)
        .call(const NoParams());
    if (result case Right(value: final saved?)) {
      state = state.copyWith(dailyReference: saved.dailyCalorieReference);
    }
  }

  void _mealsChanged() => ref.read(mealChangesProvider.notifier).changed();

  /// Clears the message first so the same error shows again.
  void _showError(String message) {
    state = state.copyWith(errorMessage: null);
    state = state.copyWith(errorMessage: message);
  }
}
