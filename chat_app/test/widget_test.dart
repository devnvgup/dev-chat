import 'package:flutter_test/flutter_test.dart';

import 'package:chat_app/app/app.dart';

void main() {
  testWidgets('navigates from login to recent chats home', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ChatApp());

    expect(find.text('Luminous'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);

    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    expect(find.text('Recent Messages'), findsOneWidget);
    expect(find.text('Sarah J.'), findsOneWidget);
    expect(find.text('Invite Friends'), findsOneWidget);
  });
}
