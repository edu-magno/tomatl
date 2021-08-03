import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../shared/theme/tomatl_colors.dart';
import '../../../../../shared/widgets/vertical_spacing_10.dart';
import 'help_text_widget.dart';
import 'help_title_widget.dart';

// TODO refactor
class HelpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.help_outline,
        color: TomatlColors.primary,
      ),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HelpTitleWidget(
                    title: '${AppLocalizations.of(context)?.defaultTimer}',
                  ),
                  HelpTextWidget(
                    text:
                        '${AppLocalizations.of(context)?.defaultTimerDescription}',
                  ),
                  VerticalSpacing10(),
                  HelpTitleWidget(
                    title: '${AppLocalizations.of(context)?.fastTimer}',
                  ),
                  HelpTextWidget(
                    text:
                        '${AppLocalizations.of(context)?.fastTimerDescription}',
                  ),
                  VerticalSpacing10(),
                  HelpTitleWidget(
                    title: '${AppLocalizations.of(context)?.longTimer}',
                  ),
                  HelpTextWidget(
                    text:
                        '${AppLocalizations.of(context)?.longTimerDescription}',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: TextButton.styleFrom(
                          primary: TomatlColors.primary.shade900,
                        ),
                        child: Text('${AppLocalizations.of(context)?.ok}')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
