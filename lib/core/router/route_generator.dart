import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/modules/features/Login_screen/presentation/screen/login_screen.dart';
import 'package:hawyaty/modules/features/custom_screen/presentation/screen/custom_screen.dart';
import 'package:hawyaty/modules/features/landing/presentation/screen/landing_screen.dart';
import 'package:hawyaty/modules/features/lang_screen/presentation/lang_screen.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/screen/student_home_screen.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/screen/unit_screen.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static PageTransitionType pageTransitionType = PageTransitionType.rightToLeft;
  static Alignment pageAlignment = Alignment.bottomCenter;
  static Duration pushDuration = const Duration(milliseconds: 300);
  static Duration popDuration = const Duration(milliseconds: 300);

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    String? deepLinkIfFound;

    if (kDebugMode) {
      print("Page Route Name : ${settings.name}");
    }
    String? routerName = settings.name;
    if (settings.name == null) {
      routerName = RouteNames.index;
    }

    switch (routerName) {
      // case RouteNames.OnBoardingScreen:
      //   return PageTransition(
      //       settings: settings,
      //       child: const OnBoardingScreen(),
      //       type: pageTransitionType,
      //       alignment: pageAlignment,
      //       reverseDuration: popDuration,
      //       duration: pushDuration);
      // case RouteNames.maintenanceScreen:
      //   return PageTransition(
      //       settings: settings,
      //       child: const MaintenanceScreen(),
      //       type: pageTransitionType,
      //       alignment: pageAlignment,
      //       reverseDuration: popDuration,
      //       duration: pushDuration);
      // case RouteNames.deepLinkScreen:
      //   var url = args as String;
      //   return PageTransition(
      //       settings: settings,
      //       child: QrScreen(url: url),
      //       type: pageTransitionType,
      //       alignment: pageAlignment,
      //       reverseDuration: popDuration,
      //       duration: pushDuration);

      // case RouteNames.shareClipActivityScreen:
      //   var arguments = args as List<dynamic>;
      //   return PageTransition(
      //       settings: settings,
      //       child: ShareClipActivityDetailsScreen(
      //         courseId: arguments[0] as int,
      //         clipId: arguments[1] as int,
      //       ),
      //       type: pageTransitionType,
      //       alignment: pageAlignment,
      //       reverseDuration: popDuration,
      //       duration: pushDuration);

      case RouteNames.landingScreen:
        return PageTransition(
            settings: settings,
            child: const LandingScreen(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      case RouteNames.loginScreen:
        return PageTransition(
            settings: settings,
            child: const LoginScreen(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      case RouteNames.langScreen:
        return PageTransition(
            settings: settings,
            child: LangScreen(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      case RouteNames.customScreen:
        return PageTransition(
            settings: settings,
            child: MyWidget(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      case RouteNames.studentHome:
        return PageTransition(
            settings: settings,
            child: const StudentHomeScreen(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      case RouteNames.unitScreen:
        return PageTransition(
            settings: settings,
            child: const UnitScreen(),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);

      default:
        return PageTransition(
            settings: settings,
            child: LandingScreen(deepLink: deepLinkIfFound),
            type: pageTransitionType,
            alignment: pageAlignment,
            reverseDuration: popDuration,
            duration: pushDuration);
    }
  }
}
