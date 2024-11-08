import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';

class LessonWidget extends StatelessWidget {
  final LessonEntity dataSource;

  const LessonWidget({super.key, required this.dataSource});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        context.read<LessonCubit>().onNavigateToLOTypeScreen();
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
            child: Text(dataSource.title,
                textAlign: TextAlign.center,
                style: context.getAppTheme.appThemeText.body1TextStyle.copyWith(height: 1)),
          ),
        ),
      ),
    );
  }
}
