import 'package:hawyaty/core/data/converter/base_mapper.dart';
import 'package:hawyaty/modules/features/unit_screen/data/dto/unit_dto.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';

class UnitDtoToEntityMapper extends BaseMapper<List<UnitDto>, List<UnityEntity>> {
  @override
  List<UnitDto> fromEntity(List<UnityEntity> entity) {
    // TODO: implement fromEntity
    throw UnimplementedError();
  }

  @override
  List<UnityEntity> toEntity(List<UnitDto> model) {
    // TODO: implement toEntity
    return model
        .map((model) => UnityEntity(
            id: model.id,
            title: model.title,
            sort: model.sort,
            fullyQualifiedName: model.fullyQualifiedName,
            shortName: model.shortName,
            isShow: model.isShow,
            unitType: model.unitType,
            unitNumber: model.unitNumber,
            subjectId: model.subjectId))
        .toList();
  }
}
