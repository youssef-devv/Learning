import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_learning/main.dart';

void main() {
  testWidgets('Todo page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify hint text exists.
    expect(find.text('Enter y3m hna...'), findsOneWidget);

    // Enter text in TextField.
    await tester.enterText(find.byType(TextField), 'Buy milk');

    // Tap 'Add Item' button.
    await tester.tap(find.text('Add Item'));
    await tester.pump();

    // Verify button works without error.
    expect(find.text('Add Item'), findsOneWidget);
  });
}


