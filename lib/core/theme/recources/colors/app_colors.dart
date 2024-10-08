import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Base Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;
  static const Color balticSea = Color(0xFF18171d); // 900
  static const Color raisinBlack = Color(0xFF242329); // 900
  static const Color darkGrey = Color(0xFF121212);
  static const Color onyx = Color(0xFF45444B); // 900
  static const Color alabaster = Color(0xffE1E6EB);
  static const Color abbey = Color(0xFF464648);
  static const Color dimGray = Color(0xFF5d5d5d);
  static const Color shadow = Color.fromRGBO(33, 22, 156, 0.1);
  static const Color whisper = Color(0xFFECECF4);
  static const Color red = Color(0xffd53d46);
  static const Color neutral = Color(0xfff4f4f4); // inputBackgroundColor
  static const Color green = Color(0xFF27a361);
  static const Color lightGreen = Color(0xff49c6a6);
  static const Color blue = Color(0xFF346A9A);
  static const Color lightBlue = Color(0xffDAE7F7);
  static const Color lighterBlue = Color(0xffDAE7F7);
  static const Color yellow = Color(0xFFe6c773);
  static const Color whiteYellow = Color(0xffFEF9C2);
  static const Color darkYellow = Color(0xfff4C02F);
  static const Color purple = Color(0xff6f62ac);
  static const Color greyHint = Color(0xFF7f7f7f);
  static const Color orange = Color(0xffee5900);
  static const Color whiteGrey = Color(0xFFd2dbdf);
  static const Color pink = Color(0xFFd44c91);

  // Student primary color
  static const Map<int, Color> coralCommanderSwatch = {
    50: Color(0xFFFDEDED),
    100: Color(0xFFFBD3D2),
    200: Color(0xFFF8B5B4),
    300: Color(0xFFF59795),
    400: Color(0xFFF2817F),
    500: Color(0xFFF06B68),
    600: Color(0xFFEE6360),
    700: Color(0xFFEC5855),
    800: Color(0xFFE94E4B),
    900: Color(0xFFE53C3A),
  };

  static const MaterialColor studentPrimaryColor = MaterialColor(
    0xFFF06B68,
    coralCommanderSwatch,
  );

  static const Map<int, Color> SummerDayBlueSwatch = {
    50: Color(0xFFE7EDF3),
    100: Color(0xFFC2D2E1),
    200: Color(0xFF9AB5CD),
    300: Color(0xFF7197B8),
    400: Color(0xFF5280A9),
    500: Color(0xFF346A9A),
    600: Color(0xFF2F6292),
    700: Color(0xFF275788),
    800: Color(0xFF214D7E),
    900: Color(0xFF153C6C),
  };

  static const MaterialColor teacherPrimaryColor = MaterialColor(
    0xFF346A9A,
    SummerDayBlueSwatch,
  );

  static const Map<int, Color> eucaliptoSwatch = {
    50: Color(0xFFE9F8F4),
    100: Color(0xFFC8EEE4),
    200: Color(0xFFA4E3D3),
    300: Color(0xFF80D7C1),
    400: Color(0xFF64CFB3),
    500: Color(0xFF49C6A6),
    600: Color(0xFF42C09E),
    700: Color(0xFF39B995),
    800: Color(0xFF31B18B),
    900: Color(0xFF21A47B),
  };

  static const MaterialColor parentPrimaryColor = MaterialColor(
    0xFF49C6A6,
    eucaliptoSwatch,
  );

  static const Map<int, Color> lampLightSwatch = {
    50: Color(0xFFFFF9E8),
    100: Color(0xFFFFF1C6),
    200: Color(0xFFFFE8A0),
    300: Color(0xFFFFDF79),
    400: Color(0xFFFFD85D),
    500: Color(0xFFFFD140),
    600: Color(0xFFFFCC3A),
    700: Color(0xFFFFC632),
    800: Color(0xFFFFC02A),
    900: Color(0xFFFFB51C),
  };

  static const MaterialColor yellowColor = MaterialColor(
    0xFFFFD140,
    lampLightSwatch,
  );

  static const Map<int, Color> bluePurpleSwatch = {
    50: Color(0xFFefe8fa),
    100: Color(0xFFd5c6f2),
    200: Color(0xFFb9a0ea),
    300: Color(0xFF9c78e3),
    400: Color(0xFF8559dc),
    500: Color(0xFF6d3bd5),
    600: Color(0xFF6235ce),
    700: Color(0xFF532dc5),
    800: Color(0xFF4427be),
    900: Color(0xFF271ab3),
  };

  static const MaterialColor bluePurple = MaterialColor(
    0xFF6d3bd5,
    bluePurpleSwatch,
  );

  static const Map<int, Color> turquoiseSwatch = {
    50: Color(0xFFdff8f7),
    100: Color(0xFFb1edec),
    200: Color(0xFF7de1e2),
    400: Color(0xFF00cad1),
    700: Color(0xFF009ba1),
  };

  static const MaterialAccentColor turquoise = MaterialAccentColor(
    0xFF7de1e2,
    turquoiseSwatch,
  );

  static const Map<int, Color> capriSwatch = {
    50: Color(0xFFe1f6ff),
    100: Color(0xFFb2e7ff),
    200: Color(0xFF7ed7ff),
    300: Color(0xFF7ed7ff),
    400: Color(0xFF00bbff),
    500: Color(0xFF00afff),
    600: Color(0xFF00a0f0),
    700: Color(0xFF008ddb),
    800: Color(0xFF007cc8),
    900: Color(0xFF005ba5),
  };

  static const MaterialColor capri = MaterialColor(
    0xFF00afff,
    capriSwatch,
  );

  static const Map<int, Color> roseSwatch = {
    100: Color(0xFFfcbcd0),
    200: Color(0xFFfa91b0),
    400: Color(0xFFf54378),
    700: Color(0xFFcb1b5a),
  };

  static const MaterialAccentColor rose = MaterialAccentColor(
    0xFFfa91b0,
    roseSwatch,
  );

  static const Map<int, Color> slateGreySwatch = {
    50: Color(0xFFe8f0f7),
    100: Color(0xFFcad9e2),
    200: Color(0xFFacbfcb),
    300: Color(0xFF8da6b5),
    400: Color(0xFF7592a3),
    500: Color(0xFF5d7f92),
    600: Color(0xFF517081),
    700: Color(0xFF425c6a),
    800: Color(0xFF344955),
    900: Color(0xFF23343d),
  };

  static const MaterialColor slateGrey = MaterialColor(
    0xFF5d7f92,
    slateGreySwatch,
  );

  static const Map<int, Color> orangeRedSwatch = {
    100: Color(0xFFfecfbf),
    200: Color(0xFFfeb096),
    400: Color(0xFFff7a4c),
    700: Color(0xFFe65824),
  };

  static const MaterialAccentColor orangeRed = MaterialAccentColor(
    0xFFfeb096,
    orangeRedSwatch,
  );

  static const Map<int, Color> veroneseGreenSwatch = {
    50: Color(0xFFddf4f0),
    100: Color(0xFFaae3d8),
    200: Color(0xFF6dd2bf),
    300: Color(0xFF23bea6),
    400: Color(0xFF00af93),
    500: Color(0xFF009f81),
    600: Color(0xFF009174),
    700: Color(0xFF008164),
    800: Color(0xFF007156),
    900: Color(0xFF00543a),
  };

  static const MaterialColor veroneseGreen = MaterialColor(
    0xFF6dd2bf,
    veroneseGreenSwatch,
  );

  static const Map<int, Color> tomatoSwatch = {
    50: Color(0xFFffedef),
    100: Color(0xFFffd2d6),
    200: Color(0xFFf4a3a1),
    300: Color(0xFFec7e7c),
    400: Color(0xFFf8635a),
    500: Color(0xFFfd5440),
    600: Color(0xFFef4c40),
    700: Color(0xFFde4239),
    800: Color(0xFFd03c33),
    900: Color(0xFFc13227),
  };

  static const MaterialColor tomato = MaterialColor(
    0xFFf4a3a1,
    tomatoSwatch,
  );

  static const Map<int, Color> vividSkySwatch = {
    50: Color(0xFFdafaff),
    100: Color(0xFF9ff2fe),
    200: Color(0xFF42e9ff),
    300: Color(0xFF00defc),
    400: Color(0xFF00d5f7),
    500: Color(0xFF00ccf4),
    600: Color(0xFF00bbdf),
    700: Color(0xFF00a6c3),
    800: Color(0xFF0091a9),
    900: Color(0xFF006e79),
  };

  static const MaterialColor vividSky = MaterialColor(
    0xFF42e9ff,
    vividSkySwatch,
  );

  static const Map<int, Color> champagneSwatch = {
    50: Color(0xFFfaf4e4),
    100: Color(0xFFf3e2ba),
    200: Color(0xFFEDCF8E),
    300: Color(0xFFe8bc5f),
    400: Color(0xFFe6ad3a),
    500: Color(0xFFe5a01e),
    600: Color(0xFFe19519),
    700: Color(0xFFdb8612),
    800: Color(0xFFd67809),
    900: Color(0xFFcd6100),
  };

  static const MaterialColor champagne = MaterialColor(
    0xFFEDCF8E,
    champagneSwatch,
  );

  static const Map<int, Color> mauveSwatch = {
    50: Color(0xFFeedfe7),
    100: Color(0xFFd6afc6),
    200: Color(0xFFBA7BA1),
    300: Color(0xFFa0467f),
    400: Color(0xFF8f156a),
    500: Color(0xFF7d0056),
    600: Color(0xFF730053),
    700: Color(0xFF65004d),
    800: Color(0xFF570047),
    900: Color(0xFF3f003c),
  };

  static const mauve = MaterialColor(
    0xFFBA7BA1,
    mauveSwatch,
  );

  static const Map<int, Color> brightSunSwatch = {
    50: Color(0xFFfef8e4),
    100: Color(0xFFfeecb9),
    200: Color(0xFFfddf8e),
    300: Color(0xFFfdd464),
    400: Color(0xFFfcca4a),
    500: Color(0xFFfbc13f),
    600: Color(0xFFf9b43a),
    700: Color(0xFFf7a237),
    800: Color(0xFFf59334),
    900: Color(0xFFf3772c),
  };

  static const MaterialColor brightSun = MaterialColor(
    0xFFfbc13f,
    brightSunSwatch,
  );

  static const Map<int, Color> greenSwatch = {
    50: Color(0xFFeefce7),
    100: Color(0xFFd5f6c2),
    200: Color(0xFFb7f09a),
    300: Color(0xFF96e96c),
    400: Color(0xFF78e344),
    500: Color(0xFF58dd00),
    600: Color(0xFF45cc00),
    700: Color(0xFF21b700),
    800: Color(0xFF00a300),
    900: Color(0xFF008000),
  };

  static const MaterialColor greenColor = MaterialColor(
    0xFF59DD00,
    greenSwatch,
  );

  static const Map<int, Color> coffeeSwatch = {
    50: Color(0xFFf5eae3),
    100: Color(0xFFddccc3),
    200: Color(0xFFc2ab9f),
    300: Color(0xFFa68a7a),
    400: Color(0xFF92715e),
    500: Color(0xFF7d5942),
    600: Color(0xFF714f3c),
    700: Color(0xFF624332),
    800: Color(0xFF53362a),
    900: Color(0xFF43291f),
  };

  static const coffee = MaterialColor(
    0xFFc2ab9f,
    coffeeSwatch,
  );
}

class HeatmapColors {
  final HSVColor start;
  final HSVColor end;

  HeatmapColors({
    required this.start,
    required this.end,
  });

  Color getColor(double weight) {
    return HSVColor.lerp(start, end, weight)!.toColor();
  }
}

class AlertLevels {
  final Color safe;
  final Color alert;
  final Color warning;
  final Color neutral;

  AlertLevels({
    required this.safe,
    required this.alert,
    required this.warning,
    required this.neutral,
  });
}
