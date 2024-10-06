import 'package:flutter/material.dart';
import 'package:hawyaty/core/theme/recources/colors/default_colors/default_colors.dart';
import 'package:hawyaty/core/theme/recources/colors/other_colors/other_colors.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_size.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_weight.dart';
import 'package:hawyaty/core/theme/recources/text_theme/default_theme_text/default_theme_text.dart';
import 'package:hawyaty/core/theme/recources/text_theme/theme_text.dart';
import 'package:hawyaty/core/theme/recources/theme_data/default_theme_data/default_theme_data.dart';

import 'recources/colors/theme_colors.dart';

class AppTheme {
  final Brightness brightness;
  late ThemeColors colors;
  late ThemeData themeData;
  late ThemeText appThemeText;
  AppTheme.defaultTheme(this.brightness, BaseFontSize baseFontSize, BaseFontWeight baseFontWeight) {
    colors = DefaultColors(brightness);
    appThemeText = DefaultThemeText(themeColors: colors,fontSize: baseFontSize,fontWeight: baseFontWeight);
    themeData = DefaultThemeData(brightness, colors, appThemeText).themeData;
  }

  AppTheme.othersTheme(this.brightness,BaseFontSize baseFontSize, BaseFontWeight baseFontWeight) {
    colors = OtherColors(brightness);
    appThemeText = DefaultThemeText(themeColors: colors,fontSize: baseFontSize,fontWeight: baseFontWeight);
    themeData = DefaultThemeData(brightness, colors, appThemeText).themeData;
  }
}