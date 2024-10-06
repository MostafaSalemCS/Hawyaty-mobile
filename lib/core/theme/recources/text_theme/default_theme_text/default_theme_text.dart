import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:hawyaty/core/theme/recources/text_theme/theme_text.dart';

class DefaultThemeText extends ThemeText {
  DefaultThemeText({required super.themeColors, required super.fontSize, required super.fontWeight});

  @override
  TextStyle buildMainAppTitleBarTextStyle() {
    // TODO: implement buildMainAppTitleBarTextStyle
    return  TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s24,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildBody1TextStyle() {
    // TODO: implement buildBody1TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s30,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildBody2TextStyle() {
    // TODO: implement buildBody2TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s30,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH2BoldTextStyle() {
    // TODO: implement buildH2BoldTextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s28,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH3BoldTextStyle() {
    // TODO: implement buildH3BoldTextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s26,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH3TextStyle() {
    // TODO: implement buildH3TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s26,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH4BoldTextStyle() {
    // TODO: implement buildH4BoldTextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s24,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH4TextStyle() {
    // TODO: implement buildH4TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s24,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH5BoldTextStyle() {
    // TODO: implement buildH5BoldTextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s20,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH5TextStyle() {
    // TODO: implement buildH5TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s20,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH6BoldTextStyle() {
    // TODO: implement buildH6BoldTextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s16,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildH6TextStyle() {
    // TODO: implement buildH6TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s16,
        fontWeight:  baseFontWeight.regular,
        letterSpacing: 0.25);
  }

  @override
  TextStyle buildSubtitle2TextStyle() {
    // TODO: implement buildSubtitle2TextStyle
    return TextStyle(
        color: Colors.black,
        // fontFamily: fontManager.currentFontFamily,
        fontSize: baseFontSize.s30,
        fontWeight:  baseFontWeight.bold,
        letterSpacing: 0.25);
  }


}