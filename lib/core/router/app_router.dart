import 'package:go_router/go_router.dart';
import 'package:imdumb/presentation/pages/splash_page.dart';

import '../../domain/entities/movie_category.dart';
import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/movie_detail_page.dart';
import '../../presentation/pages/movie_discover_page.dart';
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
    ),
    GoRoute(
      path: '/movie_discover',
      name: 'movie_discover',
      pageBuilder: (context, state) => FadeTransitionPage(
          child: MovieDiscoverPage(state.extra as CategoryEntity)),
    ),
    GoRoute(
      path: '/movie_detail',
      name: 'movie_detail',
      pageBuilder: (context, state) => FadeTransitionPage(
          child: MovieDetailPage(state.extra as int)),
    ),
  ]);
  static GoRouter get router => _router;
}
