import 'package:flutter/material.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:sizer/sizer.dart';

class VideoWidget extends StatelessWidget {
  final String dataSource;

  const VideoWidget({super.key, required this.dataSource});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 8.w),
        Card(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          color: Colors.grey,
          child: Center(
            child: Container(
              margin: EdgeInsets.all(12.w),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          // alignment: Alignment.center,
          // color: Colors.green,
          child: Text(dataSource,
              textAlign: TextAlign.center,
              style: context.getAppTheme.appThemeText.h3BoldTextStyle.copyWith(height: 1)),
        ),
      ],
    );
  }
}
