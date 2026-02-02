import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/config/app_config.dart';

final dioProvider = Provider<Dio>((ref) {
  final config = ref.watch(appConfigProvider);
  // Initialize and configure Dio instance here
  final dio = Dio(BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZjQ0YTg2ZTAzMjc5ZTk5OGEzMTMxMzljOTRhNTg3MyIsIm5iZiI6MTU5NzExODY2MC4xMDA5OTk4LCJzdWIiOiI1ZjMyMThjNDlhMzU4ZDAwMzg5M2MyMTMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.JVgRGCnvhHVomvBbb3aIStJ2nDYkMdzLNg25sNtmDbw'
      },
      baseUrl: config.apiHost,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      queryParameters: {
        'api_key': config.apiKey,
      }));

  return dio;
});
