import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/domain/base_usecase.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/repository/lesson_repository.dart';

class GetLessonsUseCase extends BaseUseCase<List<LessonEntity>, int> {
  final LessonRepository repository;

  List<LessonEntity> _dataSource = [];

  List<LessonEntity> get getDataSource => _dataSource;

  GetLessonsUseCase({required this.repository});

  @override
  Future<Either<Failure, List<LessonEntity>>> execute(int params) async {
    // TODO: implement execute
    return await repository.getLessonListAsync(params);
  }

  initialize(List<LessonEntity> data) {
    _dataSource = data;
  }
}
