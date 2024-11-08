import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/usecase/lesson_usecase/get_lesson_usecase.dart';
import 'package:meta/meta.dart';

part 'lesson_state.dart';

class LessonCubit extends Cubit<LessonState> {
  final GetLessonsUseCase lessonsUseCase;

  LessonCubit({required this.lessonsUseCase}) : super(LessonState.initial());

  int _unitId = 0;

  Future<void> initialize({required int unitId}) async {
    _unitId = unitId;
    await _initializeHandler();
  }

  Future<void> _initializeHandler() async {
    emit(state.copyWith(status: BaseCubitStatus.loading));
    await _getLessonList();
    // emit(state.copyWith(status: BaseStatus.loaded));

    // if (lessonsUseCase.getDataSource.isNotEmpty) {
    //   emit(state.copyWith(
    //       status: BaseStatus.loaded, lessonDataSource: lessonsUseCase.getDataSource));
    // }

    emit(state.copyWith(
        status: BaseCubitStatus.loaded,
        lessonDataSource: lessonsUseCase.getDataSource,
        videoDataSource: ["video 1", "video 2"]));
  }

  Future<void> _getLessonList() async {
    var response = await lessonsUseCase.execute(_unitId);
    response.fold((l) => null, (data) {
      lessonsUseCase.initialize(data);
    });
  }

  Future<void> onNavigateToLOTypeScreen() async {
    AppNavigator.instance.navigateTo(RouteNames.loTypeScreen);
  }

  Future<void> refresh() async {
    await _initializeHandler();
  }
}
