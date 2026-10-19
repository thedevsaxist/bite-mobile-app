import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/network/api_error.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/profile/data/datasources/profile_api_service.dart';
import 'package:calorie_estimator/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:calorie_estimator/features/profile/data/models/profile_dto.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/profile/domain/repositories/profile_repository.dart';

part 'profile_repository_impl.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) => ProfileRepositoryImpl(
  ref.watch(profileApiServiceProvider),
  ref.watch(profileLocalDataSourceProvider),
);

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._api, this._local);

  final ProfileApiService _api;
  final ProfileLocalDataSource _local;

  @override
  FutureEither<SavedProfile?> getProfile() async {
    final remote = await guard(() async {
      try {
        final response = await _api.getProfile();
        final reference = await _api.getDietaryReference();
        final saved = SavedProfile(
          profile: response.profile.toEntity(),
          dailyCalorieReference:
              reference.dietaryReference.dailyCalorieReference,
        );
        await _local.save(saved);
        return saved;
      } on DioException catch (e) {
        final code = ApiError.fromResponseData(e.response?.data)?.code;
        if (code != ProfileApiService.profileNotFound) rethrow;
        await _local.delete();
        return null;
      }
    });

    if (remote case Left(value: final failure) when failure.isUnreachable) {
      if (await guard(_local.get) case Right(value: final cached?)) {
        return Right(cached);
      }
    }
    return remote;
  }

  @override
  FutureEither<SavedProfile> saveProfile(UserProfile profile) => guard(
    () async {
      final response = await _api.putProfile(ProfileDto.fromEntity(profile));
      final saved = SavedProfile(
        profile: response.profile.toEntity(),
        dailyCalorieReference: response.dietaryReference.dailyCalorieReference,
      );
      await _local.save(saved);
      return saved;
    },
  );
}
