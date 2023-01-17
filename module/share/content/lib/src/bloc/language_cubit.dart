import 'package:content/content.dart';
import 'package:content/src/lang/app_lang_en.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<LanguageState> {
  static LanguageCubit I = LanguageCubit();

  LanguageCubit() : super(LanguageState());

  Future<bool> saveLocale(String? langCode) async {
    // Todo: Save locale code to cache
    return true;
  }

  Future<void> changeLang(String? langCode) async {
    saveLocale(langCode).then((value) {
      if (value) {
        var lang = getLanguageFromCache();

        emit(LanguageState(
          lang: lang,
        ));
      }
    });
  }

  AppLang getLanguageByCode(String? langCode) {
    return AppLangEn();
  }

  AppLang getLanguageFromCache() {
    return AppLangEn();
  }
}
