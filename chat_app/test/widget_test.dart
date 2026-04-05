import 'package:flutter_test/flutter_test.dart';

import 'package:chat_app/app/app.dart';

void main() {
  testWidgets('renders login page', (WidgetTester tester) async {
    await tester.pumpWidget(const ChatApp());

    expect(find.text('Luminous'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);
  });
}
