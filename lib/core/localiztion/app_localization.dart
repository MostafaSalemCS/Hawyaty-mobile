import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hawyaty/core/localiztion/app_localizations_delegate.dart';
import 'package:hawyaty/core/localiztion/itranslate.dart';


class AppLocalizations extends ITranslate  {
  late final Locale locale;

  AppLocalizations(this.locale);

  static List<Locale> get supportedLanguages => const AppLocalizationsDelegate().supportedLanguages;
  bool isSupported(Locale type) => const AppLocalizationsDelegate().isSupported(type);

  // Helper method to keep the code in the widgets concise Localizations are
  // accessed using an InheritedWidget "of" syntax
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  Map<String, String> _localizedStrings = {};
  Map<String, String> _localizedStringsDefault = {};

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    String jsonString = await rootBundle.loadString('assets/i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    String jsonStringEn = await rootBundle.loadString('assets/i18n/ar.json');
    Map<String, dynamic> jsonMapEn = json.decode(jsonStringEn);
    _localizedStringsDefault = jsonMapEn.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  // This method will be called from every widget which needs a localized text
  String _translate(String key) {
    return _localizedStrings[key] != null
        ? _localizedStrings[key].toString()
        : _localizedStringsDefault[key] != null
            ? _localizedStringsDefault[key].toString()
            : key;
  }

  @override
  String translate(String key) {
    // TODO: implement translateOverride
   return _translate(key);
  }



}
