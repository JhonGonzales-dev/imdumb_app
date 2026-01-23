import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdumb/domain/entities/app_config.dart';
part 'splash_state.freezed.dart';
@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.success( AppConfigEntity entity) = _Success;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.error(String message) = _Error;
}