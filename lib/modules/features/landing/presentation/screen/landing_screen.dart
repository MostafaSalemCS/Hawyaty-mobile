import 'package:flutter/material.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/core/localiztion/itranslate.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_generator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/modules/features/landing/presentation/cubit/landing_cubit.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class LandingScreen extends BasePageScreen {
  final String? deepLink;
  const LandingScreen({super.key, this.deepLink});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends BasePageScreenState<LandingScreen> with BaseScreen {
  late LandingCubit cubit;

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
      body: Container(
        child: Center(child: GestureDetector(
          onTap: (){
            cubit.navigateToLoginPage();
          },
          child: Text(AppLocalizations.of(context)?.title
              ?? ""),
        ),

        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    cubit = LandingCubit();
  }

  @override
  Widget loadingWidget() {
    // TODO: implement loadingWidget
    return super.loadingWidget();
    // return Center(
    //
    // );
  }
}
