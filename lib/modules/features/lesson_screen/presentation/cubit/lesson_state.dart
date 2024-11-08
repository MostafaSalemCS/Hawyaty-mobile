part of 'lesson_cubit.dart';

@immutable
class LessonState extends Equatable {
  final BaseCubitStatus status;
  final List<LessonEntity>? lessonDataSource;
  final List<String>? videoDataSource;

  const LessonState(
      {required this.status, required this.lessonDataSource, required this.videoDataSource});

  LessonState copyWith(
          {BaseCubitStatus? status,
          List<LessonEntity>? lessonDataSource,
          List<String>? videoDataSource}) =>
      LessonState(
          status: status ?? this.status,
          lessonDataSource: lessonDataSource ?? this.lessonDataSource,
          videoDataSource: videoDataSource ?? this.videoDataSource);

  static LessonState initial() => const LessonState(
        status: BaseCubitStatus.initial,
        lessonDataSource: null,
        videoDataSource: null,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [status, lessonDataSource, videoDataSource];
}

// class LessonListLoaded extends LessonState {
//   final List<LessonEntity> dataSource;
//
//   LessonListLoaded({required this.dataSource});
// }
//
// class VideoListLoaded extends LessonState {
//   final List<String> dataSource;
//
//   VideoListLoaded({required this.dataSource});
// }
