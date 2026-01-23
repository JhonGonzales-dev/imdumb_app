import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';
import 'package:imdumb/domain/entities/movie.dart';
/// Open / Closed Principle (OCP)
/// El sistema debe estar abierto a extensión, pero cerrado a modificación.
/// Definimos una ABSTRACCIÓN.
/// 
/// Si mañana cambiamos de TMDB a IMDB o a un mock,
/// NO modificamos los use cases ni la UI.
abstract class MovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();
}
