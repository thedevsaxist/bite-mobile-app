import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/analyse_meal_usecase.dart';
import 'package:calorie_estimator/features/food_analysis/domain/usecases/save_analysis_as_meal_usecase.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/presentation/view_models/meal_changes.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/usecases/get_profile_usecase.dart';

class _MockAnalyse extends Mock implements AnalyseMealUseCase {}

class _MockSave extends Mock implements SaveAnalysisAsMealUseCase {}

class _MockGetProfile extends Mock implements GetProfileUseCase {}

const _rice = MealItem(
  id: 'i1',
  recognisedItemId: 'i1',
  name: 'jollof rice',
  quantity: 300,
  unit: PortionUnit.grams,
  reference: FoodReference(id: 'ref1', key: 'jollof_rice', name: 'Jollof rice'),
  nutrients: Nutrients(calories: 495),
);

FoodAnalysis _analysis({
  String? mealId,
  List<MealItem> items = const [_rice],
}) => FoodAnalysis(
  id: 'a1',
  items: items,
  createdAt: DateTime(2026, 10, 19, 13),
  mealId: mealId,
);

void main() {
  late _MockAnalyse analyse;
  late _MockSave save;
  late ProviderContainer container;

  ScanSessionViewModel session() =>
      container.read(scanSessionViewModelProvider.notifier);
  ScanSessionState state() => container.read(scanSessionViewModelProvider);

  setUpAll(() {
    registerFallbackValue((imagePath: '', context: null, cancellation: null));
    registerFallbackValue((analysisId: '', items: null));
    registerFallbackValue(const NoParams());
  });

  setUp(() {
    analyse = _MockAnalyse();
    save = _MockSave();
    final getProfile = _MockGetProfile();
    when(() => getProfile.call(any()))
        .thenAnswer((_) async => const Right<Failure, SavedProfile?>(null));

    container = ProviderContainer.test(
      overrides: [
        analyseMealUseCaseProvider.overrideWithValue(analyse),
        saveAnalysisAsMealUseCaseProvider.overrideWithValue(save),
        getProfileUseCaseProvider.overrideWithValue(getProfile),
      ],
    );
    session().setImage('/tmp/meal.jpg');
  });

  test('an auto-saved result is shown and tells History to reload', () async {
    when(() => analyse.call(any()))
        .thenAnswer((_) async => Right(_analysis(mealId: 'm1')));

    expect(await session().analyse(), AnalysisOutcome.success);

    expect(state().isSaved, isTrue);
    expect(state().totals.calories, 495);
    expect(state().step, AnalysisStep.done);
    expect(container.read(mealChangesProvider), 1);
  });

  test('the details go to the AI as one note, unless skipped', () async {
    when(() => analyse.call(any())).thenAnswer((_) async => Right(_analysis()));

    session()
      ..setDescription('Jollof rice with chicken')
      ..setNotes('fried in palm oil');
    await session().analyse();
    session().skipDetails();
    await session().analyse();

    final contexts = verify(() => analyse.call(captureAny())).captured
        .map((params) => (params as AnalyseMealParams).context)
        .toList();
    expect(contexts, [
      "What's on the plate: Jollof rice with chicken. Portion size: medium. "
          'Notes: fried in palm oil.',
      null,
    ]);
  });

  test('a blurry photo goes to "Couldn\'t analyse" with the reason', () async {
    when(() => analyse.call(any())).thenAnswer(
      (_) async => const Left(
        ValidationFailure(
          'The image is too blurry. Take a clearer photo',
          code: 'IMAGE_TOO_BLURRY',
        ),
      ),
    );

    expect(await session().analyse(), AnalysisOutcome.unreadablePhoto);
    expect(
      state().unreadableReason,
      'The image is too blurry. Take a clearer photo',
    );
  });

  test('an AI outage is an error message, not "Couldn\'t analyse"', () async {
    when(() => analyse.call(any())).thenAnswer(
      (_) async => const Left(
        ServerFailure('The AI service is unavailable', code: 'AI_UNAVAILABLE'),
      ),
    );

    expect(await session().analyse(), AnalysisOutcome.failed);
    expect(state().errorMessage, 'The AI service is unavailable');
  });

  group('with auto-save off', () {
    setUp(() {
      when(() => analyse.call(any()))
          .thenAnswer((_) async => Right(_analysis()));
      when(() => save.call(any())).thenAnswer(
        (_) async => Right(
          MealRecord(
            id: 'm1',
            analysisId: 'a1',
            eatenAt: DateTime(2026, 10, 19, 13),
            items: const [_rice],
          ),
        ),
      );
    });

    test('an unedited result is saved as the AI produced it', () async {
      await session().analyse();

      expect(await session().saveResult(), isTrue);
      final params =
          verify(() => save.call(captureAny())).captured.single
              as ({String analysisId, List<MealItem>? items});
      expect(params.items, isNull);
      expect(state().mealId, 'm1');
    });

    test('edits are kept locally and sent when saving', () async {
      await session().analyse();
      final edited = _rice.copyWith(quantity: 150, wasModified: true);

      expect(await session().updateItem(edited), isTrue);
      verifyNever(() => save.call(any()));
      await session().saveResult();

      final params =
          verify(() => save.call(captureAny())).captured.single
              as ({String analysisId, List<MealItem>? items});
      expect(params.items, [edited]);
    });

    test('an item without an amount must be fixed before saving', () async {
      when(() => analyse.call(any())).thenAnswer(
        (_) async => Right(
          _analysis(
            items: [
              _rice,
              const MealItem(id: 'i2', name: 'zobo drink'),
            ],
          ),
        ),
      );
      await session().analyse();
      await session().removeItem('i1');

      expect(await session().saveResult(), isFalse);
      expect(state().errorMessage, contains('Zobo drink'));
      verifyNever(() => save.call(any()));
    });
  });
}
