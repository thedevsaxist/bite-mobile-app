import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/settings/data/repositories/settings_repository_impl.dart';
import 'package:calorie_estimator/features/settings/domain/entities/app_settings.dart';
import 'package:calorie_estimator/features/settings/domain/repositories/settings_repository.dart';

part 'set_auto_save_results_usecase.g.dart';

class SetAutoSaveResultsUseCase implements UseCase<AppSettings, bool> {
  const SetAutoSaveResultsUseCase(this._repository);

  final SettingsRepository _repository;

  @override
  FutureEither<AppSettings> call(bool params) =>
      _repository.setAutoSaveResults(params);
}

@riverpod
SetAutoSaveResultsUseCase setAutoSaveResultsUseCase(Ref ref) =>
    SetAutoSaveResultsUseCase(ref.watch(settingsRepositoryProvider));
