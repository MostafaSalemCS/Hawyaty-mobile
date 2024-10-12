import 'package:bloc/bloc.dart';
import 'package:gamemap/model/point_model.dart';
import 'package:hawyaty/core/domain/base_usecase.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/entity/unit_entity.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/usecase/unit_usecase.dart';
import 'package:meta/meta.dart';

part 'unit_state.dart';

class UnitCubit extends Cubit<UnitState> {
  final UnitUseCase unitUseCase;

  UnitCubit({required this.unitUseCase}) : super(UnitInitial());

  Future<void> initialize() async {
    await _unitListHandler();
  }

  Future<void> _unitListHandler() async {
    await getUnitList();
    if (unitUseCase.getUnitPoints.isNotEmpty) {
      emit(UnitPointLoaded(dataSource: unitUseCase.getUnitPoints));
    }
  }

  Future<void> getUnitList() async {
    var response = await unitUseCase.execute(NoParams());
    response.fold((l) => null, (data) {
      unitUseCase.initialize(data);
    });
  }

  Future<void> onSelectedUnit(int id) async {
    print(id);
  }
}
