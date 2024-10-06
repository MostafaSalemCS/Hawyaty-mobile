import 'package:flutter/material.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage {
  Locale _appLocale = const Locale('ar'); // Default Language until shared preferences loaded

  Locale get appLocale => _appLocale;
  fetchLocale() async {
    // we should replace this line to depend on final Preference preference

    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      _appLocale = const Locale('ar'); // 👈 Default Language when not specified
      return;
    }
    _appLocale = Locale(prefs.getString('language_code') as String);
    return;
  }

  void changeLanguage(Locale type) {
    if (_appLocale == type) {
      return;
    }
    if (AppLocalizations(appLocale).isSupported(type)) {
      _appLocale = type;
      SharedPreferences.getInstance().then((var prefs) {
        prefs.setString('language_code', type.languageCode);
        prefs.setString('countryCode', type.countryCode ?? '');
      });
    } else {
      _appLocale = const Locale('ar');
      SharedPreferences.getInstance().then((var prefs) {
        prefs.setString('language_code', 'ar');
        prefs.setString('countryCode', '');
      });
    }
  }

  @override
  String toString() {
    return '''AppLanguage{
      _appLocale: $appLocale,
    }''';
  }
}
