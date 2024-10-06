
import 'package:hawyaty/modules/shared/most/app_settings/remote_settings/domain/configuration_setting_usecase.dart';

class AppSettingManager {
  // should contains values from local json and remote endpoint call
  final ConfigurationSettingUseCase remoteSetting;

  AppSettingManager({required this.remoteSetting});
}