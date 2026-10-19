import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';

part 'capture_view_model.freezed.dart';
part 'capture_view_model.g.dart';

@freezed
abstract class CaptureState with _$CaptureState {
  const factory CaptureState({
    @Default(false) bool isCameraReady,
    @Default(false) bool flashOn,
    @Default(false) bool isCapturing,

    /// Why there is no preview (no permission, no camera); the gallery
    /// still works.
    String? cameraMessage,
  }) = _CaptureState;
}

/// 05 Capture photo. Owns the camera while the screen is open.
@riverpod
class CaptureViewModel extends _$CaptureViewModel {
  CameraController? _controller;

  /// For the preview; set once [CaptureState.isCameraReady].
  CameraController? get controller => _controller;

  @override
  CaptureState build() {
    ref.onDispose(() => _controller?.dispose());
    Future.microtask(startCamera);
    return const CaptureState();
  }

  /// Opens the back camera. The camera plugin asks for permission the first
  /// time.
  Future<void> startCamera() async {
    if (_controller != null) return;
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        _unavailable('No camera found. Choose a photo from your gallery.');
        return;
      }
      final camera = cameras.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );
      final controller = _controller = CameraController(
        camera,
        ResolutionPreset.veryHigh,
        enableAudio: false,
        // The backend accepts JPEG, PNG and WebP.
        imageFormatGroup: ImageFormatGroup.jpeg,
      );
      await controller.initialize();
      if (!ref.mounted) return;
      state = state.copyWith(
        isCameraReady: true,
        flashOn: false,
        cameraMessage: null,
      );
    } on CameraException catch (e) {
      debugPrint('Camera: ${e.code} ${e.description}');
      await _releaseCamera();
      _unavailable(switch (e.code) {
        'CameraAccessDenied' ||
        'CameraAccessDeniedWithoutPrompt' ||
        'CameraAccessRestricted' =>
          'Allow camera access in Settings to take a photo, or choose one '
              'from your gallery.',
        _ => "The camera couldn't start. Choose a photo from your gallery.",
      });
    }
  }

  /// Frees the camera while the app is in the background.
  Future<void> stopCamera() async {
    await _releaseCamera();
    if (ref.mounted) state = state.copyWith(isCameraReady: false);
  }

  Future<void> toggleFlash() async {
    final controller = _controller;
    if (controller == null || !state.isCameraReady) return;
    final flashOn = !state.flashOn;
    try {
      await controller.setFlashMode(flashOn ? FlashMode.torch : FlashMode.off);
      state = state.copyWith(flashOn: flashOn);
    } on CameraException catch (e) {
      debugPrint('Flash: ${e.code}');
    }
  }

  /// Returns `true` when a photo was taken and handed to the scan session.
  Future<bool> takePhoto() async {
    final controller = _controller;
    if (controller == null || !state.isCameraReady || state.isCapturing) {
      return false;
    }
    state = state.copyWith(isCapturing: true);
    try {
      final photo = await controller.takePicture();
      ref.read(scanSessionViewModelProvider.notifier).setImage(photo.path);
      return true;
    } on CameraException catch (e) {
      debugPrint('Take picture: ${e.code}');
      return false;
    } finally {
      if (ref.mounted) state = state.copyWith(isCapturing: false);
    }
  }

  /// Returns `true` when the user picked a photo.
  Future<bool> pickFromGallery() =>
      ref.read(scanSessionViewModelProvider.notifier).pickFromGallery();

  Future<void> _releaseCamera() async {
    final controller = _controller;
    _controller = null;
    await controller?.dispose();
  }

  void _unavailable(String message) {
    if (!ref.mounted) return;
    state = state.copyWith(isCameraReady: false, cameraMessage: message);
  }
}
