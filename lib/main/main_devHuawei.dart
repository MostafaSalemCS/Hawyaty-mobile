import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hawyaty/core/localiztion/app_language.dart';
import 'package:hawyaty/core/locator/service_locator.dart';
import 'package:hawyaty/modules/app/screen/app_screen.dart';


Future<void> main() async {
  //HttpOverrides.global = SelaheltelmeezHttpOverrides();
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    //Bus.init();
    // await GlobalConfiguration().loadFromAsset(FlavorType.DEV_HUAWEI);
    //
    // await GlobalConfiguration().getPackageInfo();

    await setupLocator();
    // PushingMessageService pushingService = GetIt.instance.get<PushingMessageService>();
    // pushingService.initialize("SelahElTelmeezdev");

    if (Platform.isAndroid) {
      await InAppWebViewController.setWebContentsDebuggingEnabled(true);
    }

    FlutterError.onError = (FlutterErrorDetails details) {
      catchUnhandledExceptions(details.exception, details.stack);
    };

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async {
      AppLanguage appLanguage = AppLanguage();
      await appLanguage.fetchLocale();
      runApp( AppScreen(appLanguage: appLanguage));
    });
  }, catchUnhandledExceptions);
}

void catchUnhandledExceptions(Object error, StackTrace? stack) {
  // PushingMessageService pushingService = GetIt.instance.get<PushingMessageService>();
  //
  // pushingService.recordError(error, stack);

  debugPrintStack(stackTrace: stack, label: error.toString());

  // if (error is ServerException) {
  //   showDialog(
  //       barrierDismissible: false,
  //       context: navigatorKey.currentState!.context,
  //       builder: (ctx) => CommonDialog(
  //           title: S
  //               .of(
  //                 navigatorKey.currentState!.context,
  //               )
  //               .error_occurred,
  //           onClosePressed: () {
  //             int count = 0;
  //             Navigator.of(navigatorKey.currentState!.context).popUntil((_) => count++ >= 1);
  //           }));
  // }
}
