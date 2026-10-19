import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/repositories/meals_repository_impl.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/repositories/meals_repository.dart';

part 'get_meals_usecase.g.dart';

typedef DateRange = ({DateTime from, DateTime to});

class GetMealsUseCase implements UseCase<List<MealRecord>, DateRange> {
  const GetMealsUseCase(this._repository);

  final MealsRepository _repository;

  @override
  FutureEither<List<MealRecord>> call(DateRange params) =>
      _repository.getMeals(from: params.from, to: params.to);
}

@riverpod
GetMealsUseCase getMealsUseCase(Ref ref) =>
    GetMealsUseCase(ref.watch(mealsRepositoryProvider));
