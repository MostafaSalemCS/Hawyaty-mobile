import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/unit_screen/data/data_source/local_data_source/unit_local_data_source.dart';
import 'package:hawyaty/modules/features/unit_screen/data/dto/unit_dto.dart';

class UnitLocalDataSourceImpl extends UnitLocalDataSource {
  List<UnitDto> _dataSource = [];

  @override
  Future<Either<Failure, List<UnitDto>>> getLocalUnitList() async {
    // TODO: implement getLocalUnitList
    await Future.delayed(const Duration(seconds: 1));
    _getLocalUnitList();
    return Right(_dataSource);
  }

  void _getLocalUnitList() {
    _dataSource = <UnitDto>[
      UnitDto(
          id: 1001,
          title: "1",
          subjectId: "1",
          fullyQualifiedName: "1",
          shortName: "1",
          isShow: true,
          sort: 1,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1002,
          title: "2",
          subjectId: "2",
          fullyQualifiedName: "2",
          shortName: "2",
          isShow: true,
          sort: 2,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1003,
          title: "3",
          subjectId: "3",
          fullyQualifiedName: "3",
          shortName: "3",
          isShow: true,
          sort: 3,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1004,
          title: "4",
          subjectId: "4",
          fullyQualifiedName: "4",
          shortName: "4",
          isShow: true,
          sort: 4,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1005,
          title: "5",
          subjectId: "5",
          fullyQualifiedName: "5",
          shortName: "5",
          isShow: true,
          sort: 5,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1006,
          title: "6",
          subjectId: "6",
          fullyQualifiedName: "6",
          shortName: "6",
          isShow: true,
          sort: 6,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1007,
          title: "7",
          subjectId: "7",
          fullyQualifiedName: "7",
          shortName: "7",
          isShow: true,
          sort: 7,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 1008,
          title: "8",
          subjectId: "8",
          fullyQualifiedName: "8",
          shortName: "8",
          isShow: true,
          sort: 8,
          unitNumber: 1,
          unitType: 1),
    ];
  }
}
