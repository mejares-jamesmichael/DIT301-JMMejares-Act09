import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firechatapp/main.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FireChatApp());

    // Verify that the login screen elements are present.
    expect(find.text('FireChat Lab'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}