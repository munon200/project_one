import 'package:content/src/lang/app_lang.dart';
import 'package:content/src/lang/app_lang_en.dart';
import 'package:content/src/lang/app_lang_vi.dart';
import 'package:flutter/material.dart';

class AppLangDelegate {
  List<Locale> supportedLocales = [
    const Locale('en'),
    const Locale('vi'),
  ];

  bool isSupported(Locale locale) {
    return supportedLocales.contains(locale);
  }

  AppLang load(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return AppLangEn();
      case 'vi':
        return AppLangVi();
      default:
        return AppLangEn();
    }
  }
}
