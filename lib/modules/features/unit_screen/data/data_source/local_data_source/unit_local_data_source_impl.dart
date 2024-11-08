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
          id: 1,
          title: "الوَحْدَةُ التَّمْهيدية",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ التَّمْهيدية",
          shortName: "الوَحْدَةُ التَّمْهيدية",
          isShow: true,
          sort: 1,
          unitNumber: 1,
          unitType: 1),
      UnitDto(
          id: 2,
          title: "الوَحْدَةُ الأولي",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "2",
          shortName: "2",
          isShow: true,
          sort: 2,
          unitNumber: 2,
          unitType: 1),
      UnitDto(
          id: 3,
          title: "الوَحْدَةُ الثانية",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ الثانية",
          shortName: "الوَحْدَةُ الثانية",
          isShow: true,
          sort: 3,
          unitNumber: 3,
          unitType: 1),
      UnitDto(
          id: 4,
          title: "الوَحْدَةُ الثالثة",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ الثالثة",
          shortName: "الوَحْدَةُ الثالثة",
          isShow: true,
          sort: 4,
          unitNumber: 4,
          unitType: 1),
      UnitDto(
          id: 5,
          title: "الوَحْدَةُ الرابعة",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ الرابعة",
          shortName: "الوَحْدَةُ الرابعة",
          isShow: true,
          sort: 5,
          unitNumber: 5,
          unitType: 1),
      UnitDto(
          id: 6,
          title: "الوَحْدَةُ الخامسة",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ الخامسة",
          shortName: "الوَحْدَةُ الخامسة",
          isShow: true,
          sort: 6,
          unitNumber: 6,
          unitType: 1),
      UnitDto(
          id: 7,
          title: "الوَحْدَةُ السادسة",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ السادسة",
          shortName: "الوَحْدَةُ السادسة",
          isShow: true,
          sort: 7,
          unitNumber: 7,
          unitType: 1),
      UnitDto(
          id: 7,
          title: "الوَحْدَةُ السابعة",
          subjectId: "hyt_1r_1a",
          fullyQualifiedName: "الوَحْدَةُ السابعة",
          shortName: "الوَحْدَةُ السابعة",
          isShow: true,
          sort: 8,
          unitNumber: 8,
          unitType: 1),
    ];
  }
}
