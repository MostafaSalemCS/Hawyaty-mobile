import 'package:flutter/material.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/lesson_builder/item/lesson_widget.dart';
import 'package:sizer/sizer.dart';

class LessonGridWidget extends StatelessWidget {
  final List<LessonEntity>? dataSource;

  const LessonGridWidget({super.key, required this.dataSource});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (dataSource == null) {
      return Container();
    }

    return GridView.builder(
      itemCount: dataSource!.length,
      shrinkWrap: true,

      physics: const ScrollPhysics(),
      // scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 2.w,
            right: 2.w,
            left: 2.w,
          ),
          child: LessonWidget(
            dataSource: dataSource![index],
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
