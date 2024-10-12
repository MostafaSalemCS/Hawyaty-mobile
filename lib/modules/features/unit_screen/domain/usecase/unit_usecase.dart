import 'package:dartz/dartz.dart';
import 'package:gamemap/model/point_model.dart';
import 'package:hawyaty/core/domain/base_usecase.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/core/extension/map_indexed/iterable_map_indexed.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/repository/unit_repository.dart';

class UnitUseCase extends BaseUseCase<List<UnityEntity>, NoParams> {
  List<UnityEntity> _dataSource = [];

  List<UnityEntity> get getDataSource => _dataSource;

  List<PointModel> get getUnitPoints => _getUnitPointsList();

  final UnitRepository repository;

  UnitUseCase({required this.repository});

  @override
  Future<Either<Failure, List<UnityEntity>>> execute(NoParams params) async {
    // TODO: implement execute
    return await repository.getUnitListAsync();
  }

  void initialize(List<UnityEntity> dataSource) {
    _dataSource = dataSource;
  }

  List<PointModel> _getUnitPointsList() {
    return _dataSource.mapIndexed((int index, UnityEntity item) {
      return PointModel(width: _dataSource.length.toDouble(), data: item);
    }).toList();
  }
}
