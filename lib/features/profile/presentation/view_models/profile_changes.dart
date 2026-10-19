import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_changes.g.dart';

/// Bumped whenever the profile is saved. View models that show the profile
/// or daily reference (Home, Settings) watch it to reload.
@Riverpod(keepAlive: true)
class ProfileChanges extends _$ProfileChanges {
  @override
  int build() => 0;

  void saved() => state++;
}
