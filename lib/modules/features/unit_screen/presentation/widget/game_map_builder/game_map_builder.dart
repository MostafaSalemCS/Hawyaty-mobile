import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamemap/gamemap.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/cubit/unit_cubit.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/widget/game_map_builder/item/unit_circle_widget.dart';

class GameMapBuilder extends StatelessWidget {
  final Function(int id) onTap;

  const GameMapBuilder({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<UnitCubit, UnitState>(
      builder: (context, state) {
        if (state is UnitPointLoaded) {
          return GameLevelsScrollingMap.scrollable(
            imageUrl: "assets/drawable/Hawyaty-vertical.png",
            direction: Axis.vertical,
            reverseScrolling: true,
            pointsPositionDeltaX: -20,
            pointsPositionDeltaY: 0,
            currentPointDeltaY: 0,
            svgUrl: 'assets/svg/Hawyaty-vertical.svg',
            points: state.dataSource,
            getWidgetByIndex: (index) {
              return UnitCircleWidget(
                id: index,
                order: index.toString(),
                onTap: (int id) {
                  onTap(id);
                },
              );
            },
          );
        }
        return Container();
        // return GameLevelsScrollingMap.scrollable(
        //   imageUrl: "assets/drawable/Hawyaty-vertical.png",
        //   direction: Axis.vertical,
        //   reverseScrolling: true,
        //   pointsPositionDeltaX: -20,
        //   pointsPositionDeltaY: 0,
        //   currentPointDeltaY: 0,
        //   svgUrl: 'assets/svg/Hawyaty-vertical.svg',
        //   points: [],
        //   getWidgetByIndex: (index) {
        //     return UnitCircleWidget(
        //       id: index,
        //       order: index.toString(),
        //       onTap: (int id) {
        //         onTap(id);
        //       },
        //     );
        //   },
        // );
      },
    );
  }
}
