import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/data_source/lesson_data_source/local_data_source/lesson_local_data_source.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/dto/lesson_dto.dart';

class LessonLocalDataSourceImpl extends LessonLocalDataSource {
  List<LessonDto> _dataSource = [];

  @override
  Future<Either<Failure, List<LessonDto>>> getLessonListLocally(int unitId) async {
    // TODO: implement getLocalUnitList
    await Future.delayed(const Duration(seconds: 1));
    _getLocalLessonList(unitId);
    return Right(_dataSource);
  }

  void _getLocalLessonList(int unitId) {
    _dataSource = <LessonDto>[
      LessonDto(
        id: 1,
        title: "أ",
        sort: 1,
        name: "أ",
        shortName: "أ",
        isShow: true,
        points: 0,
        unitId: 1,
      ),
      LessonDto(
        id: 2,
        title: "ب",
        sort: 2,
        name: "ب",
        shortName: "ب",
        isShow: true,
        points: 0,
        unitId: 1,
      ),
      LessonDto(
        id: 3,
        title: "أت",
        sort: 3,
        name: "ت",
        shortName: "ت",
        isShow: true,
        points: 0,
        unitId: 1,
      ),
      LessonDto(
        id: 4,
        title: "ث",
        sort: 4,
        name: "ث",
        shortName: "ث",
        isShow: true,
        points: 0,
        unitId: 1,
      ),
    ];
  }
}
