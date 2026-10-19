import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/widgets/plate_illustration.dart';

/// The meal's photo: a local file right after capture, or the signed link
/// of a saved meal. Shows the plate illustration while there is neither, or
/// if the image can't be loaded.
class MealPhoto extends StatelessWidget {
  const MealPhoto({
    required this.plateSize,
    this.filePath,
    this.url,
    this.height,
    this.borderRadius = BorderRadius.zero,
    this.platePadding = EdgeInsets.zero,
    this.placeholder,
    this.child,
    super.key,
  });

  final String? filePath;
  final String? url;
  final double plateSize;
  final double? height;
  final BorderRadius borderRadius;
  final EdgeInsets platePadding;

  /// Shown instead of the plate illustration when there is no photo, while
  /// it loads, or if it can't be loaded.
  final Widget? placeholder;

  /// Overlaid on top, e.g. a "Retake" chip or scan line.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final placeholder =
        this.placeholder ??
        MealPhotoPlaceholder(
          plateSize: plateSize,
          height: height,
          borderRadius: borderRadius,
          platePadding: platePadding,
          child: child,
        );
    final filePath = this.filePath;
    final url = this.url;

    final Widget image;
    if (filePath != null) {
      image = Image.file(
        File(filePath),
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => placeholder,
      );
    } else if (url != null) {
      image = CachedNetworkImage(
        imageUrl: url,
        // Signed links change on every load; cache by the stored path.
        cacheKey: Uri.parse(url).replace(query: '').toString(),
        fit: BoxFit.cover,
        placeholder: (_, _) => placeholder,
        errorWidget: (_, _, _) => placeholder,
      );
    } else {
      return placeholder;
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(fit: StackFit.expand, children: [image, ?child]),
      ),
    );
  }
}
