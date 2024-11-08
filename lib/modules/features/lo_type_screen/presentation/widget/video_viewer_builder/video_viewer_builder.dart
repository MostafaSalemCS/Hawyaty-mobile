import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/cubit/lo_type_cubit.dart';
import 'package:sizer/sizer.dart';

class VideoViewerBuilder extends StatelessWidget {
  const VideoViewerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var cubit = context.read<LoTypeCubit>();
    return BlocConsumer<LoTypeCubit, LoTypeState>(
      listener: (context, state) async {
        // if (state is LandscapeOrientation) {
        //   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
        // }
        // if (state is PortraitOrientation) {
        //   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        // }
        // if (state is OpenLOViewer) {
        //   cubit.loOrientationOpen();
        //   await showDialog(
        //     barrierDismissible: false,
        //     context: context,
        //     builder: (_) => LOViewerScreen(
        //       clipName: state.clipName,
        //       clipType: state.clipType,
        //       gameObjectUrl: state.url,
        //       textDirection: state.textDirection,
        //     ),
        //   );
        //   cubit.loClosed();
        // }
      },
      buildWhen: (previous, current) {
        var success = current.loTypeStatus == LOTypeEnum.openVideo;

        return success;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            // cubit.openLOViewerPage();
          },
          child: Card(
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            color: Colors.grey,
            child: Center(
              child: Container(
                // alignment: Alignment.center,
                // color: Colors.green,
                margin: EdgeInsets.all(15.w),
                child: Text("شاهد وتعلم",
                    textAlign: TextAlign.center,
                    style: context.getAppTheme.appThemeText.h4BoldTextStyle.copyWith(height: 1)),
              ),
            ),
          ),
        );
      },
    );
  }
}
