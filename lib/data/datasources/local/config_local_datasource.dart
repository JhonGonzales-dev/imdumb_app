import '../../models/app_config_model.dart';

abstract class ConfigLocalDatasource {
  Future<void> saveConfig(AppConfigModel config);
  Future<AppConfigModel?> getConfig();
}
