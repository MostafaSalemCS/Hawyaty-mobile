import 'package:flutter/material.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/core/localiztion/itranslate.dart';
import 'package:hawyaty/modules/features/Login_screen/presentation/cubit/login_cubit.dart';
import 'package:hawyaty/modules/features/Login_screen/presentation/widget/login_page.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class LoginScreen extends BasePageScreen {
  final String? deepLink;

  const LoginScreen({super.key, this.deepLink});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BasePageScreenState<LoginScreen> with BaseScreen {
  late LoginCubit cubit;

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return LoginPage(cubit: cubit);
  }

  @override
  void initState() {
    super.initState();
    cubit = LoginCubit();
    cubit.initialize();
  }
}
