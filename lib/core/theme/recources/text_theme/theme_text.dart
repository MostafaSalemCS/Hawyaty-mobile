import 'package:flutter/material.dart';
import 'package:hawyaty/core/theme/recources/colors/app_colors.dart';
import 'package:hawyaty/core/theme/recources/colors/theme_colors.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_size.dart';
import 'package:hawyaty/core/theme/recources/text_dimension/base_font_weight.dart';

abstract class ThemeText {
  late BaseFontSize baseFontSize;
  late BaseFontWeight baseFontWeight;


  late TextStyle mainAppTitleBar;
  // late TextStyle secondaryAppTitleBar;
  // late TextStyle sectionHeaderTextStyle;
  // late TextStyle sectionContentTextStyle;
  // late TextStyle coverTextStyle;
  //
  late TextStyle body1TextStyle;
  late TextStyle body2TextStyle;
  late TextStyle subtitle2TextStyle;
  late TextStyle h2BoldTextStyle;
  late TextStyle h3BoldTextStyle;
  late TextStyle h3TextStyle;
  late TextStyle h4BoldTextStyle;
  late TextStyle h4TextStyle;
  late TextStyle h5BoldTextStyle;
  late TextStyle h5TextStyle;
  late TextStyle h6TextStyle;
  late TextStyle h6BoldTextStyle;

  ThemeText({required ThemeColors themeColors,required BaseFontSize fontSize, required BaseFontWeight fontWeight }) {
    // fontManager = companyFonts;
    baseFontSize = fontSize;
    baseFontWeight = fontWeight;

    mainAppTitleBar = buildMainAppTitleBarTextStyle();
    // secondaryAppTitleBar = buildSecondaryAppTitleBarTextStyle();
    // sectionHeaderTextStyle = buildSectionHeaderTextStyle();
    // sectionContentTextStyle = buildSectionContentTextStyle();
    // coverTextStyle = buildCoverTextStyle();
    //
    body1TextStyle = buildBody1TextStyle();
    body2TextStyle = buildBody2TextStyle();
    subtitle2TextStyle = buildSubtitle2TextStyle();
    h2BoldTextStyle = buildH2BoldTextStyle();
    h3TextStyle = buildH3TextStyle();
    h3BoldTextStyle = buildH3BoldTextStyle();
    h4BoldTextStyle = buildH4BoldTextStyle();
    h4TextStyle = buildH4TextStyle();
    h5BoldTextStyle = buildH5BoldTextStyle();
    h5TextStyle = buildH5TextStyle();
    h6BoldTextStyle = buildH6BoldTextStyle();
    h6TextStyle = buildH6TextStyle();
  }

  TextStyle buildMainAppTitleBarTextStyle();

  // TextTheme buildBaseTextTheme(Color displayColor, Color bodyColor);
  //
  // TextTheme buildPrimaryTextTheme(Color displayColor, Color bodyColor);
  //
  // TextTheme buildSecondaryTextTheme(Color displayColor, Color bodyColor);
  //
  //
  //
  // TextStyle buildSecondaryAppTitleBarTextStyle();
  //
  // TextStyle buildSectionHeaderTextStyle();
  //
  // TextStyle buildSectionContentTextStyle();
  //
  // TextStyle buildCoverTextStyle();
  //
  TextStyle buildBody1TextStyle();
  TextStyle buildBody2TextStyle();
  TextStyle buildSubtitle2TextStyle();
  TextStyle buildH2BoldTextStyle();
  TextStyle buildH3TextStyle();
  TextStyle buildH3BoldTextStyle();
  TextStyle buildH4BoldTextStyle();
  TextStyle buildH4TextStyle();
  TextStyle buildH5BoldTextStyle();
  TextStyle buildH5TextStyle();
  TextStyle buildH6TextStyle();
  TextStyle buildH6BoldTextStyle();
}