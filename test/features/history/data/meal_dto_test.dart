import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/features/food_analysis/data/models/analysis_dto.dart';
import 'package:calorie_estimator/features/history/data/models/meal_changes_request.dart';
import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

void main() {
  const jollof = FoodReference(
    id: 'ref1',
    key: 'jollof_rice',
    name: 'Jollof rice',
  );

  test('reads an analysis as the backend README documents it', () {
    final analysis = AnalysisDto.fromJson({
      'id': 'a1',
      'status': 'completed',
      'additionalContext': null,
      'imageUrl': 'https://example.supabase.co/sign/photo.jpg?token=x',
      'items': [
        {
          'id': 'i1',
          'name': 'jollof rice',
          'nutritionReference': {
            'id': 'ref1',
            'key': 'jollof_rice',
            'name': 'Jollof rice',
          },
          'portion': {'description': '1 plate', 'quantity': 300, 'unit': 'g'},
          'confidence': 0.92,
          'nutrients': {
            'calories': 495,
            'protein': 9,
            'carbohydrates': 81,
            'fat': 15,
          },
        },
        // Unmatched and unweighed: no portion, no nutrients.
        {
          'id': 'i2',
          'name': 'zobo drink',
          'nutritionReference': null,
          'portion': {'description': 'a glass', 'quantity': null, 'unit': null},
          'confidence': 0.6,
          'nutrients': null,
        },
      ],
      'totals': {'calories': 495, 'protein': 9, 'carbohydrates': 81, 'fat': 15},
      'unmatchedItemCount': 1,
      'meal': {'id': 'm1', 'status': 'saved', 'validatedByUser': false},
      'dispute': null,
      'createdAt': '2026-10-19T12:20:00.000Z',
    }).toEntity();

    expect(analysis.mealId, 'm1');
    expect(analysis.isDisputed, isFalse);
    final [matched, unmatched] = analysis.items;
    expect(matched.recognisedItemId, 'i1');
    expect(matched.reference, jollof);
    expect(matched.unit, PortionUnit.grams);
    expect(matched.nutrients?.calories, 495);
    expect(matched.portionLabel, '1 plate');
    expect(unmatched.hasPortion, isFalse);
    expect(unmatched.nutrients, isNull);
  });

  test('reads a meal, including a disputed one', () {
    final meal = MealDto.fromJson({
      'id': 'm1',
      'analysisId': 'a1',
      'mealDate': '2026-10-19T12:20:00.000Z',
      'status': 'disputed',
      'validatedByUser': false,
      'totals': {
        'calories': 860.4,
        'protein': 38,
        'carbohydrates': 112,
        'fat': 28,
      },
      'unmatchedItemCount': 0,
      'items': [
        {
          'id': 'mi1',
          'name': 'jollof rice',
          'recognisedItemId': 'i1',
          'nutritionReference': {
            'id': 'ref1',
            'key': 'jollof_rice',
            'name': 'Jollof rice',
          },
          'portion': {'quantity': 1, 'unit': 'serving'},
          'nutrients': {
            'calories': 495,
            'protein': 9,
            'carbohydrates': 81,
            'fat': 15,
          },
          'wasModified': true,
        },
      ],
      'createdAt': '2026-10-19T12:20:00.000Z',
      'updatedAt': '2026-10-19T12:20:00.000Z',
      'imageUrl': null,
    }).toEntity();

    expect(meal.isDisputed, isTrue);
    expect(meal.totalCalories, 860);
    expect(meal.title, 'Jollof rice');
    expect(meal.items.single.portionLabel, '1 serving');
  });

  group('MealItemInputDto', () {
    test('sends no nutrients for a reference food', () {
      final json = MealItemInputDto.fromEntity(
        const MealItem(
          id: 'i1',
          recognisedItemId: 'i1',
          name: 'jollof rice',
          quantity: 150,
          unit: PortionUnit.grams,
          reference: jollof,
          nutrients: Nutrients(calories: 247.5),
        ),
      ).toJson();

      expect(json, {
        'recognisedItemId': 'i1',
        'name': 'jollof rice',
        'nutritionReferenceId': 'ref1',
        'quantity': 150.0,
        'unit': 'g',
      });
    });

    test('keeps the own calories of a food without reference data', () {
      final json = MealItemInputDto.fromEntity(
        const MealItem(
          id: 'x',
          name: 'zobo drink',
          quantity: 1,
          unit: PortionUnit.servings,
          nutrients: Nutrients(calories: 120),
        ),
      ).toJson();

      expect(json, {
        'name': 'zobo drink',
        'quantity': 1.0,
        'unit': 'serving',
        'calories': 120.0,
        'protein': 0.0,
        'carbohydrates': 0.0,
        'fat': 0.0,
      });
    });

    test('refuses an item without a portion', () {
      expect(
        () => MealItemInputDto.fromEntity(
          const MealItem(id: 'x', name: 'zobo drink'),
        ),
        throwsArgumentError,
      );
    });
  });

  test('an unedited validation sends an empty body', () {
    expect(const MealChangesRequest().toJson(), isEmpty);
  });
}
