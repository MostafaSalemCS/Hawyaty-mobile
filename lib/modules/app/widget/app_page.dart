import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hawyaty/core/local_storage/preference.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_generator.dart';
import 'package:hawyaty/core/theme/theme_manager.dart';
import 'package:hawyaty/modules/app/cubit/app_cubit/app_bloc.dart';
import 'package:hawyaty/modules/features/custom_screen/presentation/screen/custom_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({super.key});

  @override
  State<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Preference _preference = Preference();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager(_preference)),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          var success = current != previous;
          return success;
        },
        builder: (context, AppState state) {
          final themeManager = context.watch<ThemeManager>();
          return Sizer(
            builder: (context, orientation, deviceType) => MaterialApp(
              onGenerateTitle: (context) => "",
              supportedLocales: AppLocalizations.supportedLanguages,
              locale: state.locale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              debugShowCheckedModeBanner: false,
              theme: themeManager.currentTheme.themeData,
              home: MyWidget(),
              navigatorKey: AppNavigator.instance.navigatorKey,
              // navigatorObservers: [Helper.routeObserver],
              //onGenerateInitialRoutes: (initialRoute) => [appRouter.generator(RouteSettings(name: initialRoute))!],,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
        },
      ),
    );
  }
}
