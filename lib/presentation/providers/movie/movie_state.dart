import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdumb/domain/entities/movie.dart';
part 'movie_state.freezed.dart';
@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.success( List<MovieEntity> data) = _Success;
  const factory MovieState.loading() = _Loading;
  const factory MovieState.changeCurrentSlide(int index) = _ChangeSlide;
  const factory MovieState.error(String message) = _Error;
}