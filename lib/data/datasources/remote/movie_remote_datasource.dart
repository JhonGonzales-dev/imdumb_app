import 'package:imdumb/data/models/movie_category_model.dart';

import '../../models/movie_detail_model.dart';
import '../../models/movie_discover_model.dart';
import '../../models/movie_model.dart';

/// Liskov Substitution Principle:
/// Cualquier implementación debe cumplir este contrato.
abstract class MovieRemoteDatasource {
  Future<List<MovieModel>> getPopularMovies();
  Future<MovieDetailModel> getDetailMovie(int id);
  Future<List<CategoryModel>> getCategoryMovies();
  Future<List<MovieDiscoverModel>> getDiscoverMovies( int id);


}