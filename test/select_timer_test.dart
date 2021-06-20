import 'package:flutter_test/flutter_test.dart';
import 'package:tomatl/app/features/home/pages/home_page.dart';

void main() {
  testWidgets('test', (tester) async {
    await tester.pumpWidget(HomePage());
    final card = find.text('Padrão');

    expect(card, findsOneWidget);
  });
}
