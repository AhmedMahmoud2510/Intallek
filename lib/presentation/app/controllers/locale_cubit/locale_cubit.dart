import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intallek/core/cache_helper/cache_helper.dart';

class LocaleCubit extends Cubit<Locale> {
 LocaleCubit() : super(_getInitialLocale());

  static Locale _getInitialLocale() {
    final savedLang = CacheHelper.getCurrentLanguage();
    return Locale(savedLang.toString());
  }

  void changeLocale(Locale locale) {
    emit(locale);
    CacheHelper.cacheLanguageCode(locale.languageCode);
  }

  void toggleLocale() {
    if (state.languageCode == 'ar') {
      changeLocale(const Locale('en'));
    } else {
      changeLocale(const Locale('ar'));
    }
  }

  bool get isEnglish => state.languageCode == 'en';
}