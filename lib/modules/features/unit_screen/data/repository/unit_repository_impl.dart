import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/core/extension/either/eitherX.dart';
import 'package:hawyaty/modules/features/unit_screen/data/data_source/local_data_source/unit_local_data_source.dart';
import 'package:hawyaty/modules/features/unit_screen/data/mapper/unit_mapper.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/repository/unit_repository.dart';

class UnitRepositoryImpl extends UnitRepository {
  final UnitLocalDataSource localDataSource;

  UnitRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<UnityEntity>>> getUnitListAsync() async {
    // TODO: implement getUnitListAsync
    List<UnityEntity> entities = [];
    UnitDtoToEntityMapper mapper = UnitDtoToEntityMapper();

    var response = await localDataSource.getLocalUnitList();

    var data = response.getRight();

    var failure = response.getLeft();
    if (failure != null) return Future.value(Left(failure));

    entities = mapper.toEntity(data!);

    return Future.value(Right(entities));
  }
}
