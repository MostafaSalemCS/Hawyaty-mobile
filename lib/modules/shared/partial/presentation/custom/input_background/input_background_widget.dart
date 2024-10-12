import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/theme/recources/colors/app_colors.dart';

class InputBackgroundWidget extends StatelessWidget {
  const InputBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.w),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
          width: 95.w,
          height: 12.w,
          decoration: BoxDecoration(
            color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.shadow],
            border: Border.all(color: AppColors.onyx, width: 0),
            borderRadius: BorderRadius.circular(9.w),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          width: 95.w,
          height: 12.w,
          decoration: BoxDecoration(
            color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.shadow],
            border: Border.all(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.circular(9.w),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.1),
            //     spreadRadius: 1,
            //     blurRadius: 5,
            //     offset: const Offset(0, -1), // changes position of shadow
            //   ),
            // ],
          ),
        ),
      ],
    );
  }
}
