import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdumb/domain/entities/movie.dart';
import 'package:imdumb/domain/entities/movies_discover.dart';

import '../../../domain/entities/movie_category.dart';
import '../../../domain/entities/movie_detail.dart';
part 'movie_state.freezed.dart';
@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.success( List<MovieEntity> data) = _Success;
  const factory MovieState.successCat( List<CategoryEntity> data) = _SuccessCategory;
  const factory MovieState.successDiscover( List<MovieDiscoverEntity> data) = _SuccessDiscover;
  const factory MovieState.successDetailMovie( MovieDetailEntity data) = _SuccessDetail;
  const factory MovieState.loading() = _Loading;
  const factory MovieState.changeCurrentSlide(int index) = _ChangeSlide;
  const factory MovieState.error(String message) = _Error;
}

