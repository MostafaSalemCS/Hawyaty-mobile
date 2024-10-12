import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/core/theme/recources/colors/app_colors.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/cubit/student_home_cubit.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/widget/items/level_widget.dart';

class StudentHomePage extends StatelessWidget {
  final StudentHomeCubit cubit;

  const StudentHomePage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: Container(
        // color: Colors.redAccent,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 50),
            Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.selectLevel,
                    style: context.getAppTheme.appThemeText.h2BoldTextStyle),
              ],
            ),
            SizedBox(height: 100),
            LevelWidget(
              title: AppLocalizations.of(context)!.firstLevel,
              onTapSelected: (id) {},
              color:
                  context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.green] ??
                      AppColors.whiteGrey,
            ),
            SizedBox(height: 50),
            LevelWidget(
              title: AppLocalizations.of(context)!.secondLevel,
              onTapSelected: (id) {},
              color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.pink] ??
                  AppColors.whiteGrey,
            ),
            SizedBox(height: 50),
            LevelWidget(
              title: AppLocalizations.of(context)!.thirdLevel,
              onTapSelected: (id) {},
              color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.red] ??
                  AppColors.whiteGrey,
            ),
          ],
        ),
      ),
    );
  }
}
