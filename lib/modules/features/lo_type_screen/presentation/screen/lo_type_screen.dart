import 'package:flutter/src/widgets/framework.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/cubit/lo_type_cubit.dart';
import 'package:hawyaty/modules/features/lo_type_screen/presentation/widget/lo_type_page.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class LOTypeScreen extends BasePageScreen {


  const LOTypeScreen({super.key });

  @override
  State<LOTypeScreen> createState() => _LOTypeScreenState();
}

class _LOTypeScreenState extends BasePageScreenState<LOTypeScreen> with BaseScreen {
  late LoTypeCubit cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = LoTypeCubit();
    cubit.initialize();
  }

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return LOTypePage(cubit: cubit);
  }
}
