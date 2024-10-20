import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/usecase/lesson_usecase/get_lesson_usecase.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/cubit/lesson_cubit.dart';
import 'package:hawyaty/modules/features/lesson_screen/presentation/widget/lesson_page.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class LessonScreen extends BasePageScreen {
  final int unitId;

  const LessonScreen({super.key, required this.unitId});

  @override
  State<LessonScreen> createState() => _LessonScreen();
}

class _LessonScreen extends BasePageScreenState<LessonScreen> with BaseScreen {
  late LessonCubit cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = LessonCubit(lessonsUseCase: GetIt.instance.get<GetLessonsUseCase>());
    cubit.initialize(unitId: widget.unitId);
  }

  @override
  Widget? appToolbar(BuildContext context) {
    // TODO: implement appToolbar
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    // TODO: implement body
    return LessonPage(cubit: cubit);
  }
}
