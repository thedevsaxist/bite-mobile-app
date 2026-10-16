import 'package:material_ui/material_ui.dart';

/// Shows [message] in a floating snack bar, replacing any current one.
void showAppSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}
