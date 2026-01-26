import 'package:dartz/dartz.dart';
import 'package:imdumb/core/error/failures.dart';
import 'package:imdumb/domain/entities/movie.dart';
import 'package:imdumb/domain/entities/movie_category.dart';
import 'package:imdumb/domain/entities/movie_detail.dart';

import '../entities/movies_discover.dart';
/// Open / Closed Principle (OCP)
/// El sistema debe estar abierto a extensión, pero cerrado a modificación.
/// Definimos una ABSTRACCIÓN.
/// 
/// Si mañana cambiamos de TMDB a IMDB o a un mock,
/// NO modificamos los use cases ni la UI.
abstract class MovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Failure, MovieDetailEntity>> getDetailMovie( int id);
  Future<Either<Failure, List<CategoryEntity>>> getCategoriesMovies();
  Future<Either<Failure, List<MovieDiscoverEntity>>> getDiscoverMovies(int id);

}
