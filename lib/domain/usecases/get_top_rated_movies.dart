import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';
import 'package:imdumb/domain/entities/movie.dart';

import '../repositories/movie_repository.dart';

class GetTopRatedMovies {
  final MovieRepository repository;

  GetTopRatedMovies({required this.repository});
  Future<Either<Failure, List<MovieEntity>>> call() async {
    return repository.getTopRatedMovies();
  }
}
