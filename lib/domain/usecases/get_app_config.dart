import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/app_config.dart';
import '../repositories/config_repository.dart';

class GetAppConfig {
  final ConfigRepository repository;

  GetAppConfig({required this.repository});
  Future<Either<Failure, AppConfigEntity>> call() async {
    return repository.getAppconfig();
  }
}
