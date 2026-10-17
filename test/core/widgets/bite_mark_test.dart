import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/widgets/bite_mark.dart';

void main() {
  Widget wrap(Widget child) => MaterialApp(
    home: Scaffold(body: Center(child: child)),
  );

  testWidgets('paints at the requested size', (tester) async {
    await tester.pumpWidget(wrap(const BiteMark(size: 64)));

    final paint = find.descendant(
      of: find.byType(BiteMark),
      matching: find.byType(CustomPaint),
    );
    expect(tester.getSize(paint), const Size.square(64));
  });

  testWidgets('is announced only when given a label', (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(wrap(const BiteMark()));
    expect(find.bySemanticsLabel('Bite'), findsNothing);

    await tester.pumpWidget(wrap(const BiteMark(semanticLabel: 'Bite')));
    expect(find.bySemanticsLabel('Bite'), findsOneWidget);

    handle.dispose();
  });

  test('ring path keeps the inner circle cut out', () {
    final ring = BiteMarkGeometry.ring;
    expect(ring.contains(BiteMarkGeometry.ringCenter), isFalse);
    // A point on the ring band, left of centre.
    expect(ring.contains(const Offset(17, 50)), isTrue);
  });
}
