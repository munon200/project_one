import 'package:content/content.dart';
import 'package:content/src/bloc/state/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState());

  final List<AppLangDelegate> delegates = [
    AppLangDelegate(),
  ];


  Future<void> saveLocale() async {
    // Todo: Save locale code to cache
  }

  Future<void> changeLang(String? langCode) async {
    emit(LanguageState());
  }
}
