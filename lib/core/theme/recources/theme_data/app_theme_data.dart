import 'package:flutter/material.dart';

abstract class AppThemeData {
  late ThemeData _themeData;

  ThemeData get themeData => _themeData;

  AppThemeData(colors, companyTextTheme, brightness) {
    // ButtonThemeData buttonThemeData = ButtonThemeData(
    //   height: AppDimens.SIZE_SPACING_3XL,
    //   colorScheme: colors.colorScheme,
    //   textTheme: ButtonTextTheme.primary,
    //   shape: shapes.buttonShapeBorder,
    // );
    // CardTheme cardTheme = CardTheme(
    //   shadowColor: colors.shadowColor,
    //   clipBehavior: Clip.antiAliasWithSaveLayer,
    //   elevation: 5.0,
    //   shape: shapes.cardShapeBorder,
    // );
    // DividerThemeData dividerThemeData = DividerThemeData(
    //   color: colors.dividerColor,
    //   thickness: 1,
    // );
    // IconThemeData primaryIconTheme = IconThemeData(
    //   color: colors.colorScheme.onPrimary,
    // );
    // ToggleButtonsThemeData toggleButtonsTheme = const ToggleButtonsThemeData(
    //   borderWidth: 0.0,
    // );
    // ChipThemeData chipThemeData = ChipThemeData(
    //   backgroundColor: colors.colorScheme.background,
    //   disabledColor: colors.colorScheme.background,
    //   selectedColor: colors.colorScheme.background,
    //   secondarySelectedColor: colors.colorScheme.background,
    //   padding: EdgeInsets.symmetric(
    //       horizontal: AppDimens.SIZE_SPACING_SMALL, vertical: AppDimens.SIZE_SPACING_XS),
    //   shape: shapes.chipShapeBorder,
    //   labelStyle: companyTextTheme.baseTextTheme.caption,
    //   secondaryLabelStyle: companyTextTheme.secondaryTextTheme.caption,
    //   brightness: brightness,
    // );
    // BottomAppBarTheme bottomAppBarTheme = BottomAppBarTheme(
    //   shape: shapes.bottomAppBarShape,
    //   color: colors.colorScheme.primary,
    // );

    _themeData = ThemeData();

    // _themeData = ThemeData(
    //   // buttonColor: colors.colorScheme.primary,
    //   // textSelectionColor: colors.colorScheme.primary,
    //   colorScheme: colors.colorScheme,
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    //   scaffoldBackgroundColor: colors.colorScheme.background,
    //   // dividerTheme: dividerThemeData,
    //   textTheme: companyTextTheme.baseTextTheme,
    //   primaryTextTheme: companyTextTheme.primaryTextTheme,
    //   // accentTextTheme: companyTextTheme.secondaryTextTheme,
    //   // buttonTheme: buttonThemeData,
    //   // cardTheme: cardTheme,
    //   brightness: brightness,
    //   // backgroundColor: colors.colorScheme.background,
    //   // toggleButtonsTheme: toggleButtonsTheme,
    //   // floatingActionButtonTheme: fabTheme,
    //   // bottomAppBarTheme: bottomAppBarTheme,
    //   // primaryIconTheme: primaryIconTheme,
    //   applyElevationOverlayColor: true,
    //   // chipTheme: chipThemeData,
    // );
  }
}