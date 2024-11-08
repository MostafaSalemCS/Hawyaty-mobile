import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/cubit/lo_viewer_cubit.dart';

class LoadingBuilder extends StatelessWidget {
  const LoadingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LoViewerCubit, LoViewerState>(
      buildWhen: (previous, current) {
        var success = current is ViewerStopLoading;
        return success;
      },
      builder: (context, state) {
        if (state is ViewerStopLoading) {
          return const SizedBox.shrink();
        }

        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: Colors.grey.withOpacity(0.5),
          color: Colors.white,
          //child: const Center(child: CircularProgressIndicator())  ,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
