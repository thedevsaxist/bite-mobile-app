import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/widgets/meal_tile.dart';

void main() {
  const fallback = MealThumbnail(
    background: Color(0xFFF5E3D3),
    foreground: Color(0xFFE2803A),
  );

  Widget tile({String? url}) => MaterialApp(
    home: Scaffold(
      body: MealTile(
        title: 'Jollof rice, fried plantain',
        subtitle: 'Lunch · 1:20 PM',
        calories: 860,
        onTap: () {},
        thumbnail: MealPhotoThumbnail(url: url, fallback: fallback),
      ),
    ),
  );

  testWidgets('shows the coloured square when the meal has no photo', (
    tester,
  ) async {
    await tester.pumpWidget(tile());

    expect(find.byType(MealThumbnail), findsOneWidget);
    expect(find.byType(CachedNetworkImage), findsNothing);
    expect(
      tester.getSize(find.byType(MealPhotoThumbnail)),
      const Size.square(MealThumbnail.size),
    );
  });

  testWidgets('loads the meal photo, with the square until it arrives', (
    tester,
  ) async {
    await tester.pumpWidget(
      tile(url: 'https://example.supabase.co/sign/u/1.jpg?token=t'),
    );

    expect(find.byType(CachedNetworkImage), findsOneWidget);
    expect(find.byType(MealThumbnail), findsOneWidget);
    expect(
      tester.getSize(find.byType(MealPhotoThumbnail)),
      const Size.square(MealThumbnail.size),
    );
  });
}
