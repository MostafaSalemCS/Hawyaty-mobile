import 'package:flutter/material.dart';
import 'package:hawyaty/core/theme/recources/colors/app_colors.dart';
import 'package:hawyaty/core/theme/recources/colors/theme_colors.dart';
import 'package:hawyaty/core/theme/recources/text_theme/theme_text.dart';
import 'package:hawyaty/core/theme/recources/theme_data/app_theme_data.dart';

class DefaultThemeData extends AppThemeData {


  DefaultThemeData(
      Brightness brightness,
      ThemeColors appColors,
      ThemeText appTextTheme,
      )   :
        super(appColors, appTextTheme, brightness);
}