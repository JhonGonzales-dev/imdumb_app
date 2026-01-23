import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:imdumb/presentation/providers/splash/splash_provider.dart';
import 'package:imdumb/presentation/providers/splash/splash_state.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashState>(splashProvider, (previous, next) {
      next.when(
        loading: () {
          // Show loading indicator or splash screen
        },
        success: (resp) {
          // Navigate to home page
          context.goNamed('home');
        },
        error: (message) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $message')),
          );
        },
      );
    });

    ref.read(splashProvider.notifier).loadApp();
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
