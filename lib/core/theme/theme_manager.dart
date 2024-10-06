import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/local_storage/preference.dart';
import 'package:hawyaty/core/theme/app_theme.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_size.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_weight.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/phone_text_dimension/phone_font_size.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/tablet_text_dimension/tablet_font_size.dart';
import 'package:hawyaty/core/utils/utils.dart';

class ThemeManager extends ChangeNotifier {
  final Preference preference;
  late AppTheme _currentTheme;
  late ThemeGroup _currentThemeGroup;
  late BaseFontWeight fontWeight;
  late BaseFontSize fontSize;

  ThemeManager(this.preference){

    if(Utils.getDeviceType() == MyDeviceType.phone) {
      fontSize = PhoneFontSize();
      fontWeight = BaseFontWeight();
    } else {
      fontSize = TabletFontSize();
      fontWeight = BaseFontWeight();
    }

    _buildTheme(ThemePreference(DEFAULT_APP_THEME, DEFAULT_BRIGHTNESS));

    // When the app is used for the first time, we don’t know what would be the user’s brightness preference.
    // In this case, we can set the default brightness according to the device’s system preference
    _currentThemePreference.then((value) {
      _buildTheme(value);
      notifyListeners();
    });
  }

  AppTheme get currentTheme => _currentTheme;

  static const String KEY_PREFERRED_BRIGHTNESS = 'PREFERRED_BRIGHTNESS';
  static const String _DARK_BRIGHTNESS = 'DARK_BRIGHTNESS';
  static const String _LIGHT_BRIGHTNESS = 'LIGHT_BRIGHTNESS';
  static const Brightness DEFAULT_BRIGHTNESS = Brightness.light;


  static const Map<Brightness, String> _brightness = {
    Brightness.dark: _DARK_BRIGHTNESS,
    Brightness.light: _LIGHT_BRIGHTNESS,
  };

  static const String KEY_APP_THEME = 'KEY_APP_THEME';
  static const String _DEFAULT_THEME = 'DEFAULT_THEME';
  static const String _OTHER_THEME = 'OTHER_THEME';
  static const String DEFAULT_APP_THEME = _DEFAULT_THEME;

  static const Map<ThemeGroup, String> _appThemes = {
    ThemeGroup.defaults: _DEFAULT_THEME,
    ThemeGroup.others: _OTHER_THEME,
  };


  Future<ThemePreference> get _currentThemePreference async {
    Brightness brightness;
    final String preferredBrightness =
    await (preference.getString(KEY_PREFERRED_BRIGHTNESS, defaultValue: ''));
    if (preferredBrightness.isEmpty) {
      brightness = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).platformBrightness;
    } else {
      brightness =
          _brightness.entries.firstWhere((element) => element.value == preferredBrightness).key;
    }
    String preferredAppTheme =
    await preference.getString(KEY_APP_THEME, defaultValue: DEFAULT_APP_THEME);
    return ThemePreference(preferredAppTheme, brightness);
  }

  toggleBrightness() {
    final String companyName =
        _appThemes.entries.firstWhere((e) => e.key == _currentThemeGroup).value;
    String toBeUpdatedBrightness;
    if (_currentTheme.brightness == Brightness.dark) {
      var themePreference = ThemePreference(companyName, Brightness.light);
      _buildTheme(themePreference);
      toBeUpdatedBrightness = _LIGHT_BRIGHTNESS;
    } else {
      final themePreference = ThemePreference(companyName, Brightness.dark);
      _buildTheme(themePreference);
      toBeUpdatedBrightness = _DARK_BRIGHTNESS;
    }
    preference.putString(KEY_PREFERRED_BRIGHTNESS, toBeUpdatedBrightness);
    notifyListeners();
  }

  _buildTheme(ThemePreference themePreference) {
    final brightness = themePreference.brightness;
    switch (themePreference.appTheme) {
      case _DEFAULT_THEME:
        _currentThemeGroup = ThemeGroup.defaults;
        _currentTheme = AppTheme.defaultTheme(brightness,fontSize,fontWeight);
        break;
      case _OTHER_THEME:
        _currentThemeGroup = ThemeGroup.others;
        _currentTheme = AppTheme.othersTheme(brightness,fontSize,fontWeight);
        break;

    }
  }

}

class ThemePreference {
  final String appTheme;
  final Brightness brightness;

  ThemePreference(this.appTheme, this.brightness);
}

