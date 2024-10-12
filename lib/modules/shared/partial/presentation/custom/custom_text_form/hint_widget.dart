import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:sizer/sizer.dart';

class HintWidget extends StatelessWidget {
  final String hint;
  final TextStyle? textStyle;

  const HintWidget({super.key, required this.hint, this.textStyle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 2.w),
        Text(
          hint,
          style: textStyle ??
              context.getAppTheme.appThemeText.h6BoldTextStyle.copyWith(
                  color: context
                      .getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.black]),
        ),
      ],
    );
  }
}
