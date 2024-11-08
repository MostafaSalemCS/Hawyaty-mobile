import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/modules/features/Login_screen/presentation/cubit/login_cubit.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/custom_text_form/custom_text_form_widget.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  final LoginCubit cubit;

  const LoginPage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60.w),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppLocalizations.of(context)!.loginUser,
                      style: context.getAppTheme.appThemeText.h2BoldTextStyle),
                ],
              ),
              SizedBox(height: 20.w),
              Container(
                width: 90.w,
                child: CustomTextFormWidget(
                  placeholderText: "Email Address",
                  onChanged: (String? value) {},
                ),
              ),
              SizedBox(height: 5.w),
              Container(
                width: 90.w,
                child: CustomTextFormWidget(
                  placeholderText: "Password",
                  onChanged: (String? value) {},
                ),
              ),
              SizedBox(height: 10.w),
              ElevatedButton(
                onPressed: () {
                  cubit.submitLogin();
                },
                child: Text(
                  AppLocalizations.of(context)!.signIn,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w), // <-- Radius
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
