// This is a Flutter widget test for the Quiz app.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Quiz app starts with StartScreen', (WidgetTester tester) async {
    // Build our Quiz app and trigger a frame.
    await tester.pumpWidget(const Quiz());

    // Verify that we start on the start screen with expected text.
    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);
    expect(find.text('Start Quiz'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_right_alt), findsOneWidget);

    // Verify that we're not on the questions screen yet.
    expect(find.text('Question'), findsNothing);
  });

  testWidgets('Start Quiz button navigates to questions screen', (WidgetTester tester) async {
    // Build our Quiz app and trigger a frame.
    await tester.pumpWidget(const Quiz());

    // Verify we start with the start screen.
    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);

    // Tap the 'Start Quiz' button and trigger a frame.
    await tester.tap(find.text('Start Quiz'));
    await tester.pump();

    // Verify that we navigated to the questions screen.
    expect(find.text('Learn Flutter the fun way!'), findsNothing);
    // The questions screen should now be visible
    // (Note: actual question text depends on questions.dart content)
  });
}
