import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/lesson_builder/item/lesson_grid_widget.dart';
import 'package:sizer/sizer.dart';

class LessonBuilder extends StatelessWidget {
  final List<LessonEntity> dataSource;

  const LessonBuilder({super.key, required this.dataSource});

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
                maxWidth: 70.w,
                // maxHeight: 150,
              ),
              child: LessonGridWidget(dataSource: state.lessonDataSource));
        }

        return ConstrainedBox(
            constraints: BoxConstraints(
              // minWidth: 70,
              // minHeight: 70,
              maxWidth: 70.w,
              // maxHeight: 150,
            ),
            child: Container());
      },
    );
  }
}
