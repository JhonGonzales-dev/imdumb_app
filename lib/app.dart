import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/config/app_config.dart';
import 'package:imdumb/core/router/app_router.dart';
import 'package:imdumb/core/utils/extension.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appConfigProvider);
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
      title: 'Imdumb',
      theme: ThemeData(fontFamily: config.flavorMode.fontFamily),
    );
  }
}
