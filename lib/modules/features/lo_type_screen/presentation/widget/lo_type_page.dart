import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/cubit/lo_type_cubit.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/widget/lo_viewer_builder/lo_viewer_builder.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/widget/video_viewer_builder/video_viewer_builder.dart';
import 'package:sizer/sizer.dart';

class LOTypePage extends StatelessWidget {
  final LoTypeCubit cubit;

  const LOTypePage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                color: Colors.grey,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(10.w),
                    child: Text("أ",
                        textAlign: TextAlign.center,
                        style: context.getAppTheme.appThemeText.body1TextStyle.copyWith(height: 1)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5.w),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LOViewerBuilder(),
              VideoViewerBuilder(),
            ],
          ),
          const Row(),
        ],
      ),
    );
  }
}
