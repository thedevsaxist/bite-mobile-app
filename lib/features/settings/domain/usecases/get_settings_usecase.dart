import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/settings/data/repositories/settings_repository_impl.dart';
import 'package:calorie_estimator/features/settings/domain/entities/app_settings.dart';
import 'package:calorie_estimator/features/settings/domain/repositories/settings_repository.dart';

part 'get_settings_usecase.g.dart';

class GetSettingsUseCase implements UseCase<AppSettings, NoParams> {
  const GetSettingsUseCase(this._repository);

  final SettingsRepository _repository;

  @override
  FutureEither<AppSettings> call(NoParams params) => _repository.getSettings();
}

@riverpod
GetSettingsUseCase getSettingsUseCase(Ref ref) =>
    GetSettingsUseCase(ref.watch(settingsRepositoryProvider));
