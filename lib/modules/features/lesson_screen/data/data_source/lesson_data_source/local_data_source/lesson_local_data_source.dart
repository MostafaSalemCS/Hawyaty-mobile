import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/dto/lesson_dto.dart';

abstract class LessonLocalDataSource {
  Future<Either<Failure, List<LessonDto>>> getLessonListLocally(int unitId);
}
