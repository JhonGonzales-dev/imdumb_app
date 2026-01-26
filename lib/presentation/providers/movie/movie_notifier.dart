import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/domain/usecases/get_discover_movies.dart';
import 'package:imdumb/domain/usecases/get_popular_movies.dart';
import 'package:imdumb/domain/usecases/get_detail_movies.dart';
import '../../../domain/usecases/get_categories_movies.dart';
import 'movie_state.dart';

class MovieNotifier extends StateNotifier<MovieState> {
  final GetPopularMovies _getPopularMovies;
  final GetDetailMovie _getDetailMovie;
  final GetCategoryMovies _getCategoryMovies;
  final GetDiscoverMovies _getDiscoverMovies;

  MovieNotifier(
    this._getPopularMovies,
    this._getDetailMovie,
    this._getCategoryMovies,
    this._getDiscoverMovies,
  ) : super(const MovieState.loading());

  Future<void> load() async {
    final result = await _getPopularMovies();
    result.fold(
      (failure) {
        state = MovieState.error(failure.message);
      },
      (data) {
        state = MovieState.success(data);
      },
    );
  }

  Future<void> loadDetailMovie(int id) async {
    final result = await _getDetailMovie(id);
    result.fold(
      (failure) {
        state = MovieState.error(failure.message);
      },
      (data) {
        state = MovieState.successDetailMovie(data);
      },
    );
  }

  Future<void> loadCategoryMovie() async {
    final result = await _getCategoryMovies();
    result.fold(
      (failure) {
        state = MovieState.error(failure.message);
      },
      (data) {
        state = MovieState.successCat(data);
      },
    );
  }

  Future<void> loadDiscoverMovie(int id) async {
    final result = await _getDiscoverMovies(id);
    result.fold(
      (failure) {
        state = MovieState.error(failure.message);
      },
      (data) {
        state = MovieState.successDiscover(data);
      },
    );
  }

  void changeCurrentSlideMovie(int index) {
    state = MovieState.changeCurrentSlide(index);
  }
}
