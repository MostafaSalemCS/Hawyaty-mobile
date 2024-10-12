import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/unit_screen/data/dto/unit_dto.dart';

abstract class UnitLocalDataSource {
  Future<Either<Failure, List<UnitDto>>> getLocalUnitList();
}
