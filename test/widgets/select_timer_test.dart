import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tomatl/app/features/home/pages/home_page.dart';
import 'package:tomatl/app/features/home/widgets/common_widgets/pause_button_widget.dart';
import 'package:tomatl/app/features/home/widgets/common_widgets/play_button_widget.dart';
import 'package:tomatl/app/features/home/widgets/help_widget/help_text_widget.dart';
import 'package:tomatl/app/features/home/widgets/help_widget/help_widget.dart';

import '../widget_translate.dart';

void main() {
  setUpAll(TestWidgetsFlutterBinding.ensureInitialized);
  testWidgets(
      'when home page start, must should the timer with value: "25:00" ',
      (tester) async {
    final widget = ProviderScope(child: makeTestableWidget(child: HomePage()));

    await tester.pumpWidget(widget);
    final selectTimerText = find.text('25:00');
    final twentyFive = find.textContaining('25');

    expect(selectTimerText, findsOneWidget);
    expect(twentyFive, findsNWidgets(2));
  });

  testWidgets('when click in a card, should change the timer value',
      (tester) async {
    final widget = ProviderScope(child: makeTestableWidget(child: HomePage()));

    await tester.pumpWidget(widget);
    final fastCard = find.text('Rápida');

    expect(fastCard, findsOneWidget);

    await tester.tap(fastCard);
    await tester.pump();

    final fastTimerValue = find.text('15:00');

    expect(fastTimerValue, findsOneWidget);
  });

  testWidgets('when tap in play  button, the value of timer should change',
      (tester) async {
    final widget = ProviderScope(child: makeTestableWidget(child: HomePage()));

    await tester.pumpWidget(widget);
    final playButton = find.byType(PlayButtonWidget);

    expect(playButton, findsOneWidget);

    await tester.tap(playButton);
    await tester.pump(Duration(seconds: 1));

    /// we need pause the timer, because if not a exception will throw,
    /// because the [Timer] continue active and be pending
    final pauseButton = find.byType(PauseButtonWidget);

    expect(pauseButton, findsOneWidget);
    await tester.tap(pauseButton);

    expect(find.text('24:59'), findsOneWidget);
  });

  testWidgets("""when tap the help widget, should open a dialog with help text 
  and pop dialog when tap the Ok button""", (tester) async {
    final widget = ProviderScope(child: makeTestableWidget(child: HomePage()));

    await tester.pumpWidget(widget);
    final helpWidget = find.byType(HelpWidget);

    expect(helpWidget, findsOneWidget);

    await tester.tap(helpWidget);
    await tester.pump();

    final helpText = find.textContaining('Temporizador');
    final okButton = find.text('Ok');
    expect(helpText, findsNWidgets(3));
    expect(okButton, findsOneWidget);

    await tester.tap(okButton);
    await tester.pump();

    expect(find.byType(HelpTextWidget), findsNothing);
  });
}
