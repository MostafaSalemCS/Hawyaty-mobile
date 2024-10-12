import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/cubit/unit_cubit.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/widget/game_map_builder/game_map_builder.dart';

class UnitPage extends StatelessWidget {
  final UnitCubit cubit;

  UnitPage({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => cubit,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GameMapBuilder(
              onTap: (int id) {
                cubit.onSelectedUnit(id);
              },
            )
          ],
        ),
      ),
    );
  }
}
