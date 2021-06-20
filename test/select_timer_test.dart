import 'package:flutter_test/flutter_test.dart';
import 'package:tomatl/app/features/select-timer-type/pages/select_timer_type_page.dart';

void main() {
  testWidgets('test', (tester) async {
    await tester.pumpWidget(SelectTimerTypePage());
    final card = find.text('Padrão');

    expect(card, findsOneWidget);
  });
}
