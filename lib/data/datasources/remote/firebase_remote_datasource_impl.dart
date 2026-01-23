import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:imdumb/data/datasources/remote/firebase_remote_datasource.dart';
import 'package:imdumb/data/models/app_config_model.dart';

class FirebaseRemoteDatasourceImpl implements FirebaseRemoteDatasource {
  final FirebaseRemoteConfig remoteConfig;

  FirebaseRemoteDatasourceImpl(this.remoteConfig);
  @override
  Future<AppConfigModel> getAppConfig() async {
    try {
      await remoteConfig.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero));

      await remoteConfig.setDefaults(<String, dynamic>{
        'show_popular': true,
        'show_top_rated': true,
        'initial_message': 'Welcome to the App!'
      });

      await remoteConfig.fetchAndActivate();
      return AppConfigModel.fromRemoteConfig({
        'show_popular': remoteConfig.getBool('show_popular'),
        'show_top_rated': remoteConfig.getBool('show_top_rated'),
        'initial_message': remoteConfig.getString('initial_message'),
      });
    } catch (e) {
      throw Exception('Failed to fetch remote config: $e');
    }
  }
}
