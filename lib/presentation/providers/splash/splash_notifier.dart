import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/domain/usecases/get_app_config.dart';
import 'package:imdumb/presentation/providers/splash/splash_state.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  final GetAppConfig getAppConfig;
  SplashNotifier(this.getAppConfig) : super(const SplashState.loading());
  Future<void> loadApp() async {
    final result = await getAppConfig();
    result.fold(
      (failure) {
        state = SplashState.error(failure.message);
      },
      (config) {
        state =  SplashState.success(config);
      },
    );
  }
}
