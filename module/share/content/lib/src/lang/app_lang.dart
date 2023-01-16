import 'package:content/content.dart';

import 'app_lang_en.dart';

abstract class AppLang {
  String get locale;

  // Date Time
  // ===========================================================================

  String get day;

  String get month;

  String get year;

  String get hour;

  String get minute;

  String get second;

  String get monday;

  String get tuesday;

  String get wednesday;

  String get thursday;

  String get friday;

  String get saturday;

  String get sunday;
}
