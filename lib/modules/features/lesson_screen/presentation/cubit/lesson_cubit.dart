import 'package:bloc/bloc.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/usecase/lesson_usecase/get_lesson_usecase.dart';
import 'package:meta/meta.dart';

part 'lesson_state.dart';

class LessonCubit extends Cubit<LessonState> {
  final GetLessonsUseCase lessonsUseCase;

  LessonCubit({required this.lessonsUseCase}) : super(LessonInitial());

  int _unitId = 0;

  Future<void> initialize({required int unitId}) async {
    _unitId = unitId;
    await _initializeHandler();
  }

  Future<void> _initializeHandler() async {
    emit(LessonLoading());
    await _getLessonList();
    emit(LessonLoaded());
  }

  Future<void> _getLessonList() async {
    var response = await lessonsUseCase.execute(_unitId);
    response.fold((l) => null, (data) {
      lessonsUseCase.initialize(data);
    });
  }

  Future<void> refresh() async {
    await _initializeHandler();
  }
}
