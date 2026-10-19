import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meal_changes.g.dart';

/// Bumped whenever a meal is saved, edited or disputed. View models that
/// show meals or intake (Home, History) watch it to reload.
@Riverpod(keepAlive: true)
class MealChanges extends _$MealChanges {
  @override
  int build() => 0;

  void changed() => state++;
}
