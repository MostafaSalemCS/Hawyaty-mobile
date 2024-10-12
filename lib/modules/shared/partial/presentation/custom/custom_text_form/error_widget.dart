import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:sizer/sizer.dart';

class MyErrorWidget extends StatelessWidget {
  final String? errorText;

  const MyErrorWidget({super.key, this.errorText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 2.w),
        Flexible(
          child: Container(
            child: Text(
              errorText ?? "------",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: context.getAppTheme.appThemeText.h6BoldTextStyle.copyWith(
                color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.red],
                height: 1,
                // fontSize: MediaQuery.of(context).size.width >= KTabletBreakPoint ? 12.sp : 14.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
