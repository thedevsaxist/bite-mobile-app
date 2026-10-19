import 'package:material_ui/material_ui.dart';

/// Shows [message] in a floating snack bar, replacing any current one.
void showAppSnackBar(BuildContext context, String message) =>
    showAppSnackBarOn(ScaffoldMessenger.of(context), message);

/// For showing a message after the current page has closed: look the
/// messenger up before closing it.
void showAppSnackBarOn(ScaffoldMessengerState messenger, String message) {
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}
