import 'package:flutter/material.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/video_builder/item/video_widget.dart';

class VideoListWidget extends StatelessWidget {
  final List<String>? dataSource;

  const VideoListWidget({super.key, required this.dataSource});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (dataSource == null) {
      return Container();
    }

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dataSource!.length,
      itemBuilder: (context, index) {
        return VideoWidget(dataSource: dataSource![index]);
      },
    );
  }
}
