import 'dart:convert';

import 'package:imdumb/data/models/app_config_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config_local_datasource.dart';

class ConfigLocalDatasourceImpl implements ConfigLocalDatasource {
  final SharedPreferences prefs;

  static const _key="app_config";

  ConfigLocalDatasourceImpl(this.prefs);
  @override
  Future<void> saveConfig(AppConfigModel config) async {
   await prefs.setString(_key, jsonEncode( config.toJson()));
  }
  
  @override
  Future<AppConfigModel?> getConfig() {
    final jsonString = prefs.getString(_key);
    if (jsonString != null) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return Future.value(AppConfigModel.fromJson(jsonMap));
    }
    return Future.value(null);
  }

  
}