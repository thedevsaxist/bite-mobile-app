import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'capture_view_model.freezed.dart';
part 'capture_view_model.g.dart';

@freezed
abstract class CaptureState with _$CaptureState {
  const factory CaptureState({
    @Default(false) bool isCameraReady,
    @Default(false) bool flashOn,
    @Default(false) bool isCapturing,
    String? errorMessage,
  }) = _CaptureState;
}

/// 05 Capture photo.
@riverpod
class CaptureViewModel extends _$CaptureViewModel {
  @override
  CaptureState build() {
    // TODO: request camera permission (permission_handler), create a
    // CameraController (enableAudio: false) for the back camera and dispose
    // it in ref.onDispose. Set isCameraReady once initialised.
    return const CaptureState();
  }

  void toggleFlash() {
    // TODO: CameraController.setFlashMode(FlashMode.torch / off).
    state = state.copyWith(flashOn: !state.flashOn);
  }

  /// Returns `true` when a photo was taken and handed to the scan session.
  Future<bool> takePhoto() async {
    // TODO: CameraController.takePicture(), run the local blur/brightness
    // check, then pass the file path to ScanSessionViewModel.setImage.
    return true;
  }

  /// Returns `true` when the user picked a photo.
  Future<bool> pickFromGallery() async {
    // TODO: ImagePicker().pickImage(source: ImageSource.gallery), then pass
    // the file path to ScanSessionViewModel.setImage. Return false if the
    // user cancels.
    return true;
  }
}
