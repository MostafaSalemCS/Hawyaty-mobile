import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/lesson_builder/lesson_builder.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/video_builder/video_builder.dart';

class LessonPage extends StatelessWidget {
  final LessonCubit cubit;

  LessonPage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: const SingleChildScrollView(
        // child: LessonPageBuilder(),
        child: Column(
          children: [
            VideoBuilder(dataSource: []),
            LessonBuilder(dataSource: []),
          ],
        ),
      ),
    );
  }
}
