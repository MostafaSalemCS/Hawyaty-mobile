import 'package:dartz/dartz.dart';
import 'package:hawyaty/core/domain/base_usecase.dart';
import 'package:hawyaty/core/error/failure.dart';
import 'package:hawyaty/modules/shared/most/app_settings/remote_settings/data/configuration_setting_entity.dart';
import 'package:hawyaty/modules/shared/partial/presentation/domain/entity/term_entity.dart';

class ConfigurationSettingUseCase extends BaseUseCase<List<ConfigurationSettingEntity>,NoParams> {

  TermEntity _currentTerm = TermEntity.empty();

  List<ConfigurationSettingEntity> _dataSource = [];
  List<ConfigurationSettingEntity> get getDataSource => _dataSource;

  @override
  Future<Either<Failure, List<ConfigurationSettingEntity>>> execute(NoParams params) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}