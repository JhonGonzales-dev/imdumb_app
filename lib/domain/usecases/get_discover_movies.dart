import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';

import '../entities/movies_discover.dart';
import '../repositories/movie_repository.dart';

class GetDiscoverMovies {
  final MovieRepository repository;

  GetDiscoverMovies({required this.repository});

  Future<Either<Failure, List<MovieDiscoverEntity>>> call(int id) async {
    return repository.getDiscoverMovies(id);
  }
}
