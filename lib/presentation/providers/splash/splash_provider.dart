import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/di/providers.dart';

import 'splash_notifier.dart';
import 'splash_state.dart';

final splashProvider = StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(ref.read(getAppConfigProvider));
});