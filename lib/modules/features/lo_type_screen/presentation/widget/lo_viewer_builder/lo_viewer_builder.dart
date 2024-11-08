import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/cubit/lo_type_cubit.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/screen/lo_viewer_screen.dart';
import 'package:sizer/sizer.dart';

class LOViewerBuilder extends StatelessWidget {
  const LOViewerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var cubit = context.read<LoTypeCubit>();
    return BlocConsumer<LoTypeCubit, LoTypeState>(
      listener: (context, state) async {
        if (state.loTypeStatus == LOTypeEnum.setLandScape) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
        }
        if (state.loTypeStatus == LOTypeEnum.setPortrait) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        }
        if (state.loTypeStatus == LOTypeEnum.openLO) {
          // /SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
          cubit.loOrientationOpen();
          await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => LOViewerScreen(
              clipName: state.clipName,
              clipType: state.clipType,
              gameObjectUrl: state.url ?? "",
              textDirection: state.textDirection,
            ),
          );
          //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          cubit.loClosed();
        }
      },
      buildWhen: (previous, current) {
        var success = current.loTypeStatus == LOTypeEnum.openLO;

        return success;
      },
      builder: (context, state) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            // Return a widget tree based on the orientation
            return GestureDetector(
              onTap: () async {
                await cubit.openLOViewerPage();
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
                    child: Text("العب",
                        textAlign: TextAlign.center,
                        style:
                            context.getAppTheme.appThemeText.h2BoldTextStyle.copyWith(height: 1)),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
