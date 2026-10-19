import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/repositories/meals_repository_impl.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/repositories/meals_repository.dart';

part 'get_meal_usecase.g.dart';

class GetMealUseCase implements UseCase<MealRecord, String> {
  const GetMealUseCase(this._repository);

  final MealsRepository _repository;

  @override
  FutureEither<MealRecord> call(String params) => _repository.getMeal(params);
}

@riverpod
GetMealUseCase getMealUseCase(Ref ref) =>
    GetMealUseCase(ref.watch(mealsRepositoryProvider));
