import 'package:hawyaty/core/data/converter/base_mapper.dart';
import 'package:hawyaty/modules/features/lesson_screen/data/dto/lesson_dto.dart';
import 'package:hawyaty/modules/features/lesson_screen/domain/entity/lesson_entity.dart';

class LessonDtoToEntityMapper extends BaseMapper<List<LessonDto>, List<LessonEntity>> {
  @override
  List<LessonDto> fromEntity(List<LessonEntity> entity) {
    // TODO: implement fromEntity
    throw UnimplementedError();
  }

  @override
  List<LessonEntity> toEntity(List<LessonDto> model) {
    // TODO: implement toEntity
    return model
        .map((dto) => LessonEntity(
              id: dto.id,
              name: dto.name,
              shortName: dto.shortName,
              sort: dto.sort,
              title: dto.title,
              isShow: dto.isShow,
              points: dto.points,
              unitId: dto.points,
            ))
        .toList();
  }
}
