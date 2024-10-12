import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';

abstract class UnitRepository {
  Future<Either<Failure, List<UnityEntity>>> getUnitListAsync();
}
