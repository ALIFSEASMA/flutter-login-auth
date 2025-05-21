import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfinal/main.dart';

void main() {
  testWidgets('App loads SplashScreen and shows expected text or widget', (
    WidgetTester tester,
  ) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(LanguageLearningApp());

    // Wait for the SplashScreen to settle
    await tester.pumpAndSettle();

    // Verify something visible on SplashScreen (e.g., logo or welcome text)
    expect(find.text('Welcome'), findsOneWidget); // <-- Adjust to your screen
  });
}
