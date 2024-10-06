import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/theme/recources/colors/app_colors.dart';

abstract class ThemeColors {
  final Brightness currentBrightness;

  ThemeColors(this.currentBrightness);

  late ColorScheme darkColorScheme;
  late ColorScheme lightColorScheme;

  bool get _dark => currentBrightness == Brightness.dark;

  ColorScheme get colorScheme => _dark ? darkColorScheme : lightColorScheme;

  // final List<MaterialColor> supplementaryAccentColors = [
  //   AppColors.veroneseGreen,
  //   AppColors.tomato,
  //   AppColors.vividSky,
  //   AppColors.champagne,
  //   AppColors.mauve,
  // ];

  // List<Color> get _supplementaryLightColors =>
  //     supplementaryAccentColors.map((e) => e.shade400).toList();
  //
  // List<Color> get _supplementaryDarkColors =>
  //     supplementaryAccentColors.map((e) => e.shade200).toList();
  //
  // List<Color> get supplementaryColors =>
  //     _dark ? _supplementaryDarkColors : _supplementaryLightColors;

  // Color get dividerColor => _dark ? AppColors.onyx : AppColors.shadow;
  //
  // Color get shadowColor => _dark ? AppColors.transparent : AppColors.shadow;
  //
  // AlertLevels get alertLevels => AlertLevels(
  //   alert: Colors.red,
  //   warning: _dark ? AppColors.brightSun.shade200 : AppColors.brightSun.shade700,
  //   neutral: Colors.grey.shade500,
  //   safe: _dark ? AppColors.greenColor.shade300 : AppColors.greenColor.shade700,
  // );
  //
  final Map<SupplementaryColorsEnum, Color> _supplementaryAccentColors = {
    SupplementaryColorsEnum.shadow: AppColors.shadow,
    SupplementaryColorsEnum.white: AppColors.white,
    SupplementaryColorsEnum.black: AppColors.black,
    SupplementaryColorsEnum.yellow: AppColors.yellow,
    SupplementaryColorsEnum.red: AppColors.red,
    SupplementaryColorsEnum.green: AppColors.green,
    SupplementaryColorsEnum.transparent: AppColors.transparent,
    SupplementaryColorsEnum.purple: AppColors.purple,
    SupplementaryColorsEnum.pink: AppColors.pink
  };

  Map<SupplementaryColorsEnum, Color> get supplementaryColors => _supplementaryAccentColors;
}
