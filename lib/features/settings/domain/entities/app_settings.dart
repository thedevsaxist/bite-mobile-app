import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

/// Per-user app preferences (report §3.5.3, "User Settings").
@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    /// Analysed meals go straight into history; on by default.
    @Default(true) bool autoSaveResults,
  }) = _AppSettings;
}
