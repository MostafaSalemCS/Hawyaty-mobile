import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/cubit/lo_viewer_cubit.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/widget/loading_builder/loading_builder.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/widget/viewer_builder/viewer_widget_builder.dart';
import 'package:sizer/sizer.dart';

class LOViewerPage extends StatelessWidget {
  final LoViewerCubit cubit;

  const LOViewerPage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Stack(
              children: [
                ViewerWidgetBuilder(),
              ],
            ),
            const LoadingBuilder(),
            Stack(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.grey,
                        // size: MediaQuery.of(context).size.height >= KTabletBreakPoint ? 5.w : 6.w,
                        size: 6.w,
                      ),
                      onPressed: () async {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
