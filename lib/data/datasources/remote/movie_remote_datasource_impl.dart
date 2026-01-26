import 'package:dio/dio.dart';
import 'package:imdumb/data/models/movie_category_model.dart';
import 'package:imdumb/data/models/movie_discover_model.dart';
import 'package:imdumb/data/models/movie_model.dart';

import '../../models/movie_detail_model.dart';
import 'movie_remote_datasource.dart';

class MovieRemoteDatasourceImpl implements MovieRemoteDatasource {
  final Dio dio;

  MovieRemoteDatasourceImpl(this.dio);

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    try {
      final response = await dio.get('/movie/popular');
      if (response.statusCode == 200) {
        final List results = response.data['results'];
        return results.map((movie) => MovieModel.fromJson(movie)).toList();
      } else {
        throw Exception('Failed to load popular movies');
      }
    } catch (e) {
      throw Exception('server error: $e');
    }
  }

  @override
  Future<MovieDetailModel> getDetailMovie(int id) async {
    try {
      final response = await dio.get('/movie/$id',
          queryParameters: {"append_to_response": "credits"});

      if (response.statusCode == 200) {
        return MovieDetailModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load detail movies');
      }
    } catch (e) {
      throw Exception('server error: $e');
    }
  }

  @override
  Future<List<CategoryModel>> getCategoryMovies() async {
    try {
      final response = await dio.get('/genre/movie/list');
      if (response.statusCode == 200) {
        final List results = response.data['genres'];
        return results.map((cat) => CategoryModel.fromJson(cat)).toList();
      } else {
        throw Exception('Failed to load category movies');
      }
    } catch (e) {
      throw Exception('server error: $e');
    }
  }

  @override
  Future<List<MovieDiscoverModel>> getDiscoverMovies(int id) async {
    try {
      final response = await dio.get('/discover/movie',
          queryParameters: {"with_genres": id, "sort_by": "popularity.desc"});

      if (response.statusCode == 200) {
        final List results = response.data['results'];
        return results
            .map((movie) => MovieDiscoverModel.fromJson(movie))
            .toList();
      } else {
        throw Exception('Failed to load discover movies');
      }
    } catch (e) {
      throw Exception('server error: $e');
    }
  }
}
