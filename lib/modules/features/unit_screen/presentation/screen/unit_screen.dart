import 'package:flutter/src/widgets/framework.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/cubit/unit_cubit.dart';
import 'package:hawyaty/modules/features/unit_screen/presentation/widget/unit_page.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class UnitScreen extends BasePageScreen {
  const UnitScreen({super.key});

  @override
  State<UnitScreen> createState() => _UnitScreen();
}

class _UnitScreen extends BasePageScreenState<UnitScreen> with BaseScreen {
  late UnitCubit cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = UnitCubit();
  }

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return UnitPage(cubit: cubit);
  }
}
