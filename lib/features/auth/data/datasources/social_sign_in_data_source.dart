import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:calorie_estimator/core/config/app_config.dart';
import 'package:calorie_estimator/core/error/exceptions.dart';

part 'social_sign_in_data_source.g.dart';

@Riverpod(keepAlive: true)
SocialSignInDataSource socialSignInDataSource(Ref ref) =>
    SocialSignInDataSource(GoogleSignIn.instance, FirebaseAuth.instance);

/// What the backend's `/auth/firebase` needs. [name] is only set for Apple,
/// which shares it once and never puts it in the token.
typedef FirebaseCredential = ({String idToken, String? name});

/// Signs in to Firebase Auth with Google or Apple and returns the Firebase ID
/// token, which the backend exchanges for its own session. Throws
/// [CancelledException] when the user closes the sheet.
class SocialSignInDataSource {
  SocialSignInDataSource(this._google, this._firebase);

  final GoogleSignIn _google;
  final FirebaseAuth _firebase;

  /// `GoogleSignIn.initialize` must run exactly once.
  Future<void>? _googleReady;

  Future<FirebaseCredential> signInWithGoogle() async {
    await (_googleReady ??= _google.initialize(
      serverClientId: AppConfig.googleServerClientId,
    ));

    final String idToken;
    try {
      final account = await _google.authenticate();
      idToken = account.authentication.idToken ?? '';
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        throw const CancelledException();
      }
      debugPrint('Google sign-in failed: $e');
      throw const ServerException(_googleFailed);
    }
    if (idToken.isEmpty) throw const ServerException(_googleFailed);

    return _firebaseToken(
      GoogleAuthProvider.credential(idToken: idToken),
      failure: _googleFailed,
    );
  }

  /// Passes Apple the SHA-256 of a random nonce, and Firebase the raw one.
  // Needs a paid Apple developer account and Apple enabled in Firebase; the
  // login screen shows "coming soon" until then.
  Future<FirebaseCredential> signInWithApple() async {
    final rawNonce = _randomNonce();
    final AuthorizationCredentialAppleID apple;
    try {
      apple = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: sha256.convert(utf8.encode(rawNonce)).toString(),
      );
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        throw const CancelledException();
      }
      debugPrint('Apple sign-in failed: $e');
      throw const ServerException(_appleFailed);
    }
    final idToken = apple.identityToken;
    if (idToken == null) throw const ServerException(_appleFailed);

    final credential = await _firebaseToken(
      OAuthProvider('apple.com').credential(
        idToken: idToken,
        rawNonce: rawNonce,
        accessToken: apple.authorizationCode,
      ),
      failure: _appleFailed,
    );
    final name = [apple.givenName, apple.familyName].nonNulls.join(' ').trim();
    return (idToken: credential.idToken, name: name.isEmpty ? null : name);
  }

  /// Signs out of Firebase and forgets the Google account, so the next
  /// sign-in shows the account picker.
  Future<void> signOut() async {
    await _firebase.signOut();
    if (_googleReady == null) return;
    await _googleReady;
    await _google.signOut();
  }

  Future<FirebaseCredential> _firebaseToken(
    AuthCredential credential, {
    required String failure,
  }) async {
    try {
      final result = await _firebase.signInWithCredential(credential);
      final idToken = await result.user?.getIdToken();
      if (idToken == null) throw ServerException(failure);
      return (idToken: idToken, name: null);
    } on FirebaseAuthException catch (e) {
      debugPrint('Firebase sign-in failed: ${e.code} ${e.message}');
      throw ServerException(failure);
    }
  }

  static String _randomNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  static const _googleFailed =
      "Couldn't sign in with Google. Please try again.";
  static const _appleFailed = "Couldn't sign in with Apple. Please try again.";
}
