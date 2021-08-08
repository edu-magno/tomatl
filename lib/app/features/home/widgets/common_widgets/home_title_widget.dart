import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../shared/theme/tomatl_typography.dart';

class HomeTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${AppLocalizations.of(context)?.homeTitle}',
      overflow: TextOverflow.ellipsis,
      style: tomatlTypography.headline6?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
