import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';

class LevelWidget extends StatelessWidget {
  final String title;
  final Function(int id) onTapSelected;
  final Color color;

  const LevelWidget(
      {super.key, required this.title, required this.onTapSelected, required this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 0),
          width: 320,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(title,
              style: context.getAppTheme.appThemeText.h2BoldTextStyle.copyWith(
                  color: context
                      .getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.white])),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 0),
          width: 320,
          height: 50,
          decoration: BoxDecoration(
            color: context.getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.shadow],
            border: Border.all(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ],
    );
  }
}
