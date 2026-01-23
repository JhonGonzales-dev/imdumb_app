import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/domain/usecases/get_popular_movies.dart';

import 'movie_state.dart';

class MovieNotifier extends StateNotifier<MovieState> {
  final GetPopularMovies getPopularMovies;

  MovieNotifier(this.getPopularMovies) : super(const MovieState.loading());

  Future<void> load() async {
    final result = await getPopularMovies();
    result.fold(
      (failure) {
        state = MovieState.error(failure.message);
      },
      (data) {
        state = MovieState.success(data);
      },
    );
  }

  void changeCurrentSlideMovie(int index) {

    state =  MovieState.changeCurrentSlide(index);
  }
}
