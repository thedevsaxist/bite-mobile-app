import 'package:material_ui/material_ui.dart';

/// Whether to use the iOS variant of a screen (the design has separate iOS
/// and Android layouts for Home and History).
bool isCupertinoPlatform(BuildContext context) =>
    switch (Theme.of(context).platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => true,
      _ => false,
    };
