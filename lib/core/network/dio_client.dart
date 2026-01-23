import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  // Initialize and configure Dio instance here
  final dio = Dio(BaseOptions(
     headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZjQ0YTg2ZTAzMjc5ZTk5OGEzMTMxMzljOTRhNTg3MyIsIm5iZiI6MTU5NzExODY2MC4xMDA5OTk4LCJzdWIiOiI1ZjMyMThjNDlhMzU4ZDAwMzg5M2MyMTMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.JVgRGCnvhHVomvBbb3aIStJ2nDYkMdzLNg25sNtmDbw'
      },
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      queryParameters: {
        'api_key': '8f44a86e03279e998a313139c94a5873',
      }));

  return dio;
});
