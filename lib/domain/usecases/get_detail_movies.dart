import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';
import '../entities/movie_detail.dart';
import '../repositories/movie_repository.dart';

class GetDetailMovie {
  final MovieRepository repository;

  GetDetailMovie({required this.repository});
  Future<Either<Failure, MovieDetailEntity>> call(int id) async {
    return repository.getDetailMovie(id);
  }
}
