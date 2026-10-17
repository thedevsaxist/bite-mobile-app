import 'package:flutter/widgets.dart';

/// Every icon the app uses, from UIcons by Flaticon (`uicons` package):
/// regular rounded, with solid rounded for selected / active states.
///
/// The values are copied from the UIcons font definitions as `const`
/// [IconData] so they work in const widgets and icon tree-shaking. To add
/// one, look up its codepoint in the matching `uicons_*` package.
abstract final class AppIcons {
  static const _regular = 'uicons_regular_rounded';
  static const _solid = 'uicons_solid_rounded';
  static const _brands = 'uicons_brands';

  // Navigation
  static const back = IconData(
    0xe91a,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // angle_left
  static const close = IconData(
    0xea98,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // cross
  static const dropdown = IconData(
    0xe91c,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // angle_small_down
  static const home = IconData(
    0xeb65,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // home
  static const homeSelected = IconData(
    0xeb6b,
    fontFamily: _solid,
    fontPackage: _solid,
  ); // home
  static const history = IconData(
    0xecd8,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // stats
  static const historySelected = IconData(
    0xecd8,
    fontFamily: _solid,
    fontPackage: _solid,
  ); // stats

  // Scan flow
  static const camera = IconData(
    0xe9db,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // camera
  static const gallery = IconData(
    0xec18,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // picture
  static const flashOff = IconData(
    0xe99f,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // bolt
  static const flashOn = IconData(
    0xe9a3,
    fontFamily: _solid,
    fontPackage: _solid,
  ); // bolt
  static const photoError = IconData(
    0xeae7,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // exclamation
  static const edit = IconData(
    0xec07,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // pencil
  static const minus = IconData(
    0xebd2,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // minus
  static const plus = IconData(
    0xec26,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // plus

  // Status
  static const check = IconData(
    0xea10,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // check
  static const info = IconData(
    0xeb79,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // info

  // Onboarding benefits
  static const clock = IconData(
    0xea30,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // clock
  static const target = IconData(
    0xe9c1,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // bullseye

  // Forms & account
  static const show = IconData(
    0xeaec,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // eye
  static const hide = IconData(
    0xeaed,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // eye_crossed
  static const logOut = IconData(
    0xeca0,
    fontFamily: _regular,
    fontPackage: _regular,
  ); // sign_out_alt

  // Brands
  static const apple = IconData(
    0xe90f,
    fontFamily: _brands,
    fontPackage: _brands,
  ); // apple
  static const google = IconData(
    0xe95b,
    fontFamily: _brands,
    fontPackage: _brands,
  ); // google
}
