import 'package:flutter/src/widgets/framework.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/cubit/student_home_cubit.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/widget/student_home_page.dart';
import 'package:hawyaty/modules/features/student_home_screen/presentation/widget/toolbar_widget/toolbar_widget.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class StudentHomeScreen extends BasePageScreen {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends BasePageScreenState<StudentHomeScreen> with BaseScreen {
  late StudentHomeCubit cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = StudentHomeCubit();
  }

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return ToolbarWidget(
      title: "مرحبا احمد",
    );
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return StudentHomePage(
      cubit: cubit,
    );
  }
}
