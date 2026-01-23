import 'package:imdumb/data/models/app_config_model.dart';


abstract class FirebaseRemoteDatasource {
  Future<AppConfigModel> getAppConfig();

}