import 'package:imdumb/core/config/app_config.dart';

extension FlavorModeX on FlavorMode {
  String get assetsPath {
    switch (this) {
      case FlavorMode.DEV:
        return 'assets/staging';
      case FlavorMode.PROD:
        return 'assets/production';
    }
  }

  String get fontFamily {
    switch (this) {
      case FlavorMode.DEV:
        return 'Pinky';
      case FlavorMode.PROD:
        return 'AppFont';
    }
  }
}
