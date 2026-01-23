import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';
import 'package:imdumb/data/datasources/local/config_local_datasource.dart';
import 'package:imdumb/data/datasources/remote/firebase_remote_datasource.dart';
import 'package:imdumb/domain/entities/app_config.dart';
import 'package:imdumb/domain/repositories/config_repository.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  final FirebaseRemoteDatasource remoteDatasource;
  final ConfigLocalDatasource localDatasource;

  ConfigRepositoryImpl(this.remoteDatasource, this.localDatasource);
  @override
  Future<Either<Failure, AppConfigEntity>> getAppconfig() async {
    try {
      final config = await remoteDatasource.getAppConfig();
      await localDatasource.saveConfig(config);
      return Right(config);
    } catch (e) {
      return left(Failure(message: "Failed to fetch config: $e"));
    }
  }
}
