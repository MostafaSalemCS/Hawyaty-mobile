import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/lesson_builder/item/lesson_grid_widget.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/video_builder/item/video_list_widget.dart';
import 'package:sizer/sizer.dart';

class LessonPageBuilder extends StatelessWidget {
  const LessonPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LessonCubit, LessonState>(
      builder: (context, state) {
        if (state.status == BaseCubitStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == BaseCubitStatus.loaded) {
          return Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  // minWidth: 70,
                  // minHeight: 70,
                  // maxWidth: 70.w,
                  minHeight: 40.w,
                ),
                child: VideoListWidget(dataSource: state.videoDataSource),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  // minWidth: 70,
                  // minHeight: 70,
                  maxWidth: 70.w,
                  // maxHeight: 150,
                ),
                child: LessonGridWidget(dataSource: state.lessonDataSource),
              ),
            ],
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
