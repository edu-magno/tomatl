# Tomatl

### Build runner:
flutter pub run build_runner build --delete-conflicting-outputs

### flutter localizations:

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


### Build Apk dev

flutter build --flavor development -t lib/main_dev.dart


### Integration tests
flutter drive -t lib/main_dev.dart --flavor development --driver=test_driver/integration_test.dart --target=integration_test/home_page_test.dart