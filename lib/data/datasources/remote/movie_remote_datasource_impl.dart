import 'package:dio/dio.dart';
import 'package:imdumb/data/models/movie_model.dart';

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
  Future<List<MovieModel>> getTopRatedMovies() async {
    try {
      final response = await dio.get('/movie/top_rated');
      if (response.statusCode == 200) {
        final List results = response.data['results'];
        return results.map((movie) => MovieModel.fromJson(movie)).toList();
      } else {
        throw Exception('Failed to load top rated movies');
      }
    } catch (e) {
      throw Exception('server error: $e');
    }
  }
}
