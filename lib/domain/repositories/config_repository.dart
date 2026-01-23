import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';

import '../entities/app_config.dart';

abstract class ConfigRepository {
  Future<Either<Failure, AppConfigEntity>> getAppconfig();
}

