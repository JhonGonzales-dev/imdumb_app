import 'package:go_router/go_router.dart';
import 'package:imdumb/presentation/pages/splash_page.dart';

import '../../presentation/pages/home_page.dart';
import 'fade_transition.dart';

class AppRoute {
  static final _router = GoRouter(initialLocation: '/splash', routes: [
    GoRoute(
      path: '/splash',
      name: 'splash',
      pageBuilder: (context, state) =>
          FadeTransitionPage(child: const SplashPage()),
    ),
     GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) =>
          FadeTransitionPage(child: const HomePage()),
    )
  ]);
  static GoRouter get router => _router;
}
