import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/meal_photo.dart';

/// A saved meal row: name, "Lunch · 1:20 PM" and its calories.
///
/// Home shows it with a [thumbnail]; History shows it without.
class MealTile extends StatelessWidget {
  const MealTile({
    required this.title,
    required this.subtitle,
    required this.calories,
    required this.onTap,
    this.thumbnail,
    super.key,
  });

  final String title;
  final String subtitle;
  final int calories;
  final VoidCallback onTap;
  final Widget? thumbnail;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final radius = BorderRadius.circular(
      thumbnail == null ? AppRadii.input : AppRadii.md,
    );

    return Material(
      color: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Padding(
          padding: thumbnail == null
              ? const EdgeInsets.symmetric(horizontal: 14, vertical: 12)
              : const EdgeInsets.all(AppSpacing.sm),
          child: Row(
            spacing: AppSpacing.sm,
            children: [
              ?thumbnail,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      title,
                      style: textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(subtitle, style: textTheme.bodySmall),
                  ],
                ),
              ),
              Text(
                formatNumber(calories),
                semanticsLabel: formatKcal(calories),
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A saved meal's photo in [MealTile], with [fallback] shown while there is
/// no photo, while it loads, or if it can't be loaded.
class MealPhotoThumbnail extends StatelessWidget {
  const MealPhotoThumbnail({
    required this.url,
    required this.fallback,
    super.key,
  });

  final String? url;
  final Widget fallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: MealThumbnail.size,
      child: MealPhoto(
        url: url,
        plateSize: MealThumbnail.size,
        borderRadius: BorderRadius.circular(AppRadii.sm),
        placeholder: fallback,
      ),
    );
  }
}

/// Coloured square standing in for a meal photo in [MealTile].
class MealThumbnail extends StatelessWidget {
  const MealThumbnail({
    required this.background,
    required this.foreground,
    this.round = false,
    super.key,
  });

  static const size = 52.0;

  final Color background;
  final Color foreground;
  final bool round;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadii.sm),
      ),
      child: Container(
        width: round ? 26 : 28,
        height: round ? 26 : 22,
        decoration: BoxDecoration(
          color: foreground,
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
