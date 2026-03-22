import 'package:flutter_test/flutter_test.dart';

import 'package:fb_login/main.dart';

void main() {
  testWidgets('login screen renders the main actions', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Facebook'), findsOneWidget);
    expect(find.text('Log in'), findsOneWidget);
    expect(find.text('Create new account'), findsOneWidget);
    expect(find.text('Forgotten password?'), findsOneWidget);
  });
}
