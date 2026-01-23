import '../../domain/entities/app_config.dart';

class AppConfigModel extends AppConfigEntity {
  AppConfigModel({
    required super.showPopular,
    required super.showTopRated,
    required super.initialMessage,
  });
  factory AppConfigModel.fromRemoteConfig(Map<String, dynamic> remoteConfig) {
    return AppConfigModel(
      showPopular: remoteConfig['show_popular'] as bool? ?? true,
      showTopRated: remoteConfig['show_top_rated'] as bool? ?? true,
      initialMessage: remoteConfig['initial_message'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'show_popular': showPopular,
      'show_top_rated': showTopRated,
      'initial_message': initialMessage,
    };
  }

  factory AppConfigModel.fromJson(Map<String, dynamic> json) {
    return AppConfigModel(
      showPopular: json['show_popular'] as bool? ?? true,
      showTopRated: json['show_top_rated'] as bool? ?? true,
      initialMessage: json['initial_message'] as String? ?? '',
    );
  }
}
