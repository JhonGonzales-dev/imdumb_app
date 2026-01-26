import '../../domain/entities/movies_discover.dart';

class MovieDiscoverModel extends MovieDiscoverEntity {
  MovieDiscoverModel({
    required super.adult,
    required super.backdrop_path,
    required super.id,
    required super.original_title,
    required super.overview,
    required super.popularity,
    required super.poster_path,
    required super.release_date,
    required super.title,
  });

  factory MovieDiscoverModel.fromJson(Map<String, dynamic> json) {
    return MovieDiscoverModel(
      id: json['id'],
      adult: json['adult'],
      backdrop_path: json['backdrop_path'],
      original_title: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      poster_path: json['poster_path'],
      release_date: json['release_date'],
      title: json['title'],
    );
  }
}
