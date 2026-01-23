import 'package:dartz/dartz.dart';

import 'package:imdumb/core/error/failures.dart';

import 'package:imdumb/domain/entities/movie.dart';

import '../../domain/repositories/movie_repository.dart';
import '../datasources/remote/movie_remote_datasource.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDatasource remoteDatasource;

  MovieRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final movies = await remoteDatasource.getPopularMovies();

      return Right(movies);
    } catch (e) {
      return left(Failure(message: "Error loading popular movies: $e"));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    try {
      final movies = await remoteDatasource.getTopRatedMovies();

      return Right(movies);
    } catch (e) {
      return left(Failure(message: "Error loading top rated movies: $e"));
    }
  }
}
