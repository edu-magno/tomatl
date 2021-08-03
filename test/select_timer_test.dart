import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tomatl/app/features/home/pages/home_page.dart';

import 'widget_translate.dart';

void main() {
  setUpAll(TestWidgetsFlutterBinding.ensureInitialized);
  testWidgets('test', (tester) async {
    final widget = ProviderScope(child: makeTestableWidget(child: HomePage()));

    await tester.pumpWidget(widget);
    final card = find.text('Padrão');

    expect(card, findsOneWidget);
  });
}
