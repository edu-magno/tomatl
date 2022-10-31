import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tomatl/app/features/home/widgets/common_widgets/pause_button_widget.dart';
import 'package:tomatl/app/features/home/widgets/common_widgets/play_button_widget.dart';

import 'app_widget_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
      'should start timer and pause after one round of focus and interval',
      (tester) async {
    await tester.pumpWidget(AppTest());

    await tester.tap(find.byType(PlayAndPauseButtonWidget));
    await tester.pump(Duration(minutes: 2, seconds: 10));

    await tester.tap(find.byType(PauseButtonWidget));
    expect(find.textContaining('INTERVAL'), findsOneWidget);
    expect(find.textContaining('0:50'), findsOneWidget);
    await tester.pump();
    await tester.tap(find.byType(PlayAndPauseButtonWidget));
    await tester.pump(Duration(seconds: 60));
    await tester.tap(find.byType(PauseButtonWidget));
    expect(find.textContaining('FOCUS'), findsOneWidget);
    expect(find.textContaining('1:50'), findsOneWidget);
  });
}
