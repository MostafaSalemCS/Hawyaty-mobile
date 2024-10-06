import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hawyaty/core/localiztion/app_language.dart';
import 'package:hawyaty/modules/app/cubit/app_cubit/app_bloc.dart';
import 'package:hawyaty/modules/app/cubit/internet_cubit/internet_cubit.dart';
import 'package:hawyaty/modules/app/widget/app_page.dart';

class AppScreen extends StatelessWidget {
  final AppLanguage appLanguage;
  const AppScreen({super.key, required this.appLanguage});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetCubit(connectivity: GetIt.instance.get<Connectivity>()),
        ),
        // BlocProvider(
        //   create: (context) =>
        //       DeepLinkCubit(accountProvider: GetIt.instance.get<UserProviderUseCase>()),
        // ),
        BlocProvider(
          create: (context) => AppBloc(appLanguage.appLocale),
        ),
      ],
      child: const AppPageView(),
    );
    // return BlocProvider<AppBloc>(
    //   create: (_) {
    //     return AppBloc(const Locale('ar'));
    //   },
    //   child: const AppPageView(),
    // );
  }
}
