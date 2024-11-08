import 'package:get_it/get_it.dart';

class DiInjectionLOTypeScreen {
  final GetIt instance;

  DiInjectionLOTypeScreen({required this.instance}) {
    /////////////////////////// Help Screens DI ///////////////////////////////////////////

    // instance.registerFactory<LessonLocalDataSource>(
    //       () => LessonLocalDataSourceImpl(),
    // );
    // //
    // instance.registerFactory<LessonRepository>(
    //       () => LessonRepositoryImpl(
    //     localDataSource: instance.get<LessonLocalDataSource>(),
    //   ),
    // );
    // //
    // instance.registerFactory<GetLessonsUseCase>(
    //       () => GetLessonsUseCase(
    //     repository: instance.get<LessonRepository>(),
    //   ),
    // );

    /////////////////////////////////////// End ////////////////////////////////////////////////
  }
}
