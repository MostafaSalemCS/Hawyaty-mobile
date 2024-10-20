import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/core/extension/either/eitherX.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/data_source/lesson_data_source/local_data_source/lesson_local_data_source.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/mapper/lesson_mapper.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/repository/lesson_repository.dart';

class LessonRepositoryImpl extends LessonRepository {
  final LessonLocalDataSource localDataSource;

  LessonRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<LessonEntity>>> getLessonListAsync(int unitId) async {
    // TODO: implement getLessonListAsync

    List<LessonEntity> entities = [];
    LessonDtoToEntityMapper mapper = LessonDtoToEntityMapper();

    var response = await localDataSource.getLessonListLocally(unitId);

    var data = response.getRight();

    var failure = response.getLeft();
    if (failure != null) return Future.value(Left(failure));

    entities = mapper.toEntity(data!);

    return Future.value(Right(entities));
  }
}
