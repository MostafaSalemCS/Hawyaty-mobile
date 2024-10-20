import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';

abstract class LessonRepository {
  Future<Either<Failure, List<LessonEntity>>> getLessonListAsync(int unitId);
}
