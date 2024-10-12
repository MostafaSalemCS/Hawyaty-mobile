import 'package:get_it/get_it.dart';
import 'package:hawyaty/modules/features/unit_screen/data/data_source/local_data_source/unit_local_data_source.dart';
import 'package:hawyaty/modules/features/unit_screen/data/data_source/local_data_source/unit_local_data_source_impl.dart';
import 'package:hawyaty/modules/features/unit_screen/data/repository/unit_repository_impl.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/repository/unit_repository.dart';
import 'package:hawyaty/modules/features/unit_screen/domain/usecase/unit_usecase.dart';

class DiInjectionUnitScreen {
  final GetIt instance;

  DiInjectionUnitScreen({required this.instance}) {
    /////////////////////////// Help Screens DI ///////////////////////////////////////////
    // instance.registerFactory<HelpScreenRemoteDataSource>(
    //   () => HelpScreenRemoteDataSourceImpl(
    //     dioClient: instance.get<AnonymousDioClient>(),
    //   ),
    // );

    instance.registerFactory<UnitLocalDataSource>(
      () => UnitLocalDataSourceImpl(),
    );

    instance.registerFactory<UnitRepository>(
      () => UnitRepositoryImpl(
        localDataSource: instance.get<UnitLocalDataSource>(),
      ),
    );

    instance.registerFactory<UnitUseCase>(
      () => UnitUseCase(
        repository: instance.get<UnitRepository>(),
      ),
    );

    /////////////////////////////////////// End ////////////////////////////////////////////////
  }
}
