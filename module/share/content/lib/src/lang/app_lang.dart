import 'package:content/content.dart';
import 'package:content/src/bloc/language_cubit.dart';

abstract class AppLang {
  AppLang of() => LanguageCubit.I.getLanguageFromCache();

  // Common
  // ===========================================================================

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
