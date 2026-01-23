import '../../models/movie_model.dart';

/// Liskov Substitution Principle:
/// Cualquier implementación debe cumplir este contrato.
abstract class MovieRemoteDatasource {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}