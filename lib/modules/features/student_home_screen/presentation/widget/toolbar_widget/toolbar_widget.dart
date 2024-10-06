import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';

class ToolbarWidget extends StatelessWidget {
  final String title;

  const ToolbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 220,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context
                      .getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.purple],
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      title,
                      style: context.getAppTheme.appThemeText.h5BoldTextStyle.copyWith(
                          color: context.getAppTheme.colors
                              .supplementaryColors[SupplementaryColorsEnum.white]),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}
