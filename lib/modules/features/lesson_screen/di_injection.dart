import 'package:get_it/get_it.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/data_source/lesson_data_source/local_data_source/lesson_local_data_source.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/data_source/lesson_data_source/local_data_source/lesson_local_data_source_impl.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/repository/lesson_repository_impl.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/repository/lesson_repository.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/usecase/lesson_usecase/get_lesson_usecase.dart';

class DiInjectionLessonScreen {
  final GetIt instance;

  DiInjectionLessonScreen({required this.instance}) {
    /////////////////////////// Help Screens DI ///////////////////////////////////////////
    // instance.registerFactory<HelpScreenRemoteDataSource>(
    //   () => HelpScreenRemoteDataSourceImpl(
    //     dioClient: instance.get<AnonymousDioClient>(),
    //   ),
    // );

    instance.registerFactory<LessonLocalDataSource>(
      () => LessonLocalDataSourceImpl(),
    );
    //
    instance.registerFactory<LessonRepository>(
      () => LessonRepositoryImpl(
        localDataSource: instance.get<LessonLocalDataSource>(),
      ),
    );
    //
    instance.registerFactory<GetLessonsUseCase>(
      () => GetLessonsUseCase(
        repository: instance.get<LessonRepository>(),
      ),
    );

    /////////////////////////////////////// End ////////////////////////////////////////////////
  }
}
