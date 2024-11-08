import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/video_builder/item/video_list_widget.dart';
import 'package:sizer/sizer.dart';

class VideoBuilder extends StatelessWidget {
  final List<String> dataSource;

  const VideoBuilder({super.key, required this.dataSource});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LessonCubit, LessonState>(
      builder: (context, state) {
        if (state.status == BaseCubitStatus.loaded) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              // minWidth: 70,
              // minHeight: 70,
              // maxWidth: 70.w,
              minHeight: 60.w,
            ),
            child: VideoListWidget(dataSource: state.videoDataSource),
          );
        }
        return ConstrainedBox(
            constraints: BoxConstraints(
              // minWidth: 70,
              // minHeight: 70,
              // maxWidth: 70.w,
              minHeight: 60.w,
            ),
            child: Container());
      },
    );
  }
}
