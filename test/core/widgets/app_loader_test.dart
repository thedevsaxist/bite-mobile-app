import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/widgets/app_loader.dart';

void main() {
  Widget wrap(Widget child, {bool reduceMotion = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(disableAnimations: reduceMotion),
      child: Scaffold(body: Center(child: child)),
    ),
  );

  Finder loaderPaint() => find.descendant(
    of: find.byType(AppLoader),
    matching: find.byType(CustomPaint),
  );

  testWidgets('animates without errors, with and without reduced motion', (
    tester,
  ) async {
    for (final reduceMotion in [false, true]) {
      await tester.pumpWidget(
        wrap(const AppLoader(), reduceMotion: reduceMotion),
      );
      await tester.pump(const Duration(milliseconds: 600));
      expect(loaderPaint(), findsOneWidget);
      expect(tester.takeException(), isNull);
    }
  });

  testWidgets('loading view hides the loader for the first 300 ms', (
    tester,
  ) async {
    await tester.pumpWidget(wrap(const AppLoadingView(message: 'Loading')));
    expect(loaderPaint(), findsNothing);

    await tester.pump(AppLoadingView.showAfter);
    expect(loaderPaint(), findsOneWidget);
  });

  testWidgets('loading view adds a status line after 10 s', (tester) async {
    await tester.pumpWidget(
      wrap(const AppLoadingView(message: 'Loading your meals…')),
    );
    expect(find.text('Loading your meals…'), findsOneWidget);

    await tester.pump(AppLoadingView.slowAfter);
    expect(find.text('This is taking longer than usual…'), findsOneWidget);
  });
}
