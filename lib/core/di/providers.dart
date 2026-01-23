import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/network/dio_client.dart';
import 'package:imdumb/data/datasources/local/config_local_dataSource_impl.dart';
import 'package:imdumb/data/datasources/remote/firebase_remote_datasource.dart';
import 'package:imdumb/data/datasources/remote/firebase_remote_datasource_impl.dart';
import 'package:imdumb/data/datasources/remote/movie_remote_datasource_impl.dart';
import 'package:imdumb/data/repositories/movie_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/datasources/remote/movie_remote_datasource.dart';
import '../../data/repositories/config_repository_impl.dart';
import '../../domain/repositories/config_repository.dart';
import '../../domain/repositories/movie_repository.dart';
import '../../domain/usecases/get_app_config.dart';
import '../../domain/usecases/get_popular_movies.dart';

///------data sources
final firebaseRemoteDatasourceProvider =
    Provider<FirebaseRemoteDatasource>((ref) {
  final remoteConfig = ref.read(firebaseRemoteConfigProvider);
  return FirebaseRemoteDatasourceImpl(remoteConfig);
});

final configLocalDataSourceProvider = Provider((ref) {
  final prefsConfig = ref.read(sharedPreferenceProvider);
  return ConfigLocalDatasourceImpl(prefsConfig);
});

final movieRemoteDataSourceProvider = Provider<MovieRemoteDatasource>((ref) {
  return MovieRemoteDatasourceImpl(ref.read(dioProvider));
});

///------repositories

final configRepositoryProvider = Provider<ConfigRepository>((ref) {
  return ConfigRepositoryImpl(ref.read(firebaseRemoteDatasourceProvider),
      ref.read(configLocalDataSourceProvider));
});

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepositoryImpl(ref.read(movieRemoteDataSourceProvider));
});

///------usecases
final getAppConfigProvider = Provider<GetAppConfig>((ref) {
  return GetAppConfig(repository: ref.read(configRepositoryProvider));
});
final getPopularMoviesProvider = Provider<GetPopularMovies>((ref) {
  return GetPopularMovies(repository: ref.read(movieRepositoryProvider));
});

/// -----Firebase Remote Datasource
final firebaseRemoteConfigProvider = Provider<FirebaseRemoteConfig>((ref) {
  return FirebaseRemoteConfig.instance;
});

final sharedPreferenceProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});
