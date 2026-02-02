import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum FlavorMode { DEV, PROD }

class AppConfig {
  final FlavorMode flavorMode;
  final String apiHost;
  final String apiKey;
  final Color primaryColor;
  final Color secondaryColor;

  const AppConfig({
    required this.flavorMode,
    required this.apiHost,
    required this.apiKey,
    required this.primaryColor,
    required this.secondaryColor,
  });
}

final appConfigProvider = Provider<AppConfig>((ref) {
  throw UnimplementedError('AppConfig no fue inicializado');
});

/* class AppConfig {
  String _apiHost;
  Color _primaryColor;
  Color _secondaryColor;
  AppConfig._internal();
  static final AppConfig _instance = AppConfig._internal();
  static AppConfig get instance => _instance;

  String get apiHost => _apiHost;
  Color get primaryColor => _primaryColor;
  Color get secondaryColor => _secondaryColor;

  void init(
      {required String apiHost,
      required Color primaryColor,
      required Color secondaryColor}) {
    _apiHost = apiHost;
    _primaryColor = primaryColor;
    _secondaryColor = secondaryColor;
  }
} */
