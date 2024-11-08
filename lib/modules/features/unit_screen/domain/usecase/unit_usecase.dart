import 'package:dartz/dartz.dart';
import 'package:gamemap/model/point_model.dart';
import 'package:hawyaty/core/domain/base_usecase.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/core/extension/map_indexed/iterable_map_indexed.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/repository/unit_repository.dart';

class UnitUseCase extends BaseUseCase<List<UnityEntity>, NoParams> {
  final UnitRepository repository;

  List<UnityEntity> _dataSource = [];

  List<UnityEntity> get getDataSource => _dataSource;

  List<PointModel> get getUnitPoints => _getUnitPointsList();

  int _index = -1;
  UnityEntity? _selectedDataSource = UnityEntity.empty();

  UnityEntity? get getSelectedDataSource => _selectedDataSource;

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
      bool isCurrent = index == 7 ? true : false;

      return PointModel(width: _dataSource.length.toDouble(), isCurrent: isCurrent, data: item);
    }).toList();
  }

  void selectedUnitByIndex(int index) {
    _index = index;
    _selectedDataSource = _dataSource.elementAtOrNull(index);
  }
}
