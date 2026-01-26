import '../../domain/entities/movie_detail.dart';

class MovieDetailModel extends MovieDetailEntity {
  MovieDetailModel({
    super.genres,
    super.homepage,
    required super.id,
    super.imdbId,
    super.originalLanguage,
    super.originalTitle,
    super.overview,
    required super.popularity,
    super.posterPath,
    required super.releaseDate,
    super.spokenLanguages,
    super.status,
    super.title,
    required super.credits,
    super.backdrop_path,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
        genres: json['genres'] != null
            ? (json['genres'] as List)
                .map((e) => GenreModel.fromJson(e))
                .toList()
            : null,
        homepage: json['homepage'] ?? '',
        id: json['id'],
        imdbId: json['imdb_id'] ?? '',
        originalLanguage: json['original_language'] ?? '',
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: (json['popularity'] as num).toDouble(),
        posterPath: json['poster_path'] ?? '',
        releaseDate: DateTime.parse(json['release_date']),
        spokenLanguages: json['spoken_languages'] != null
            ? (json['spoken_languages'] as List)
                .map((x) => SpokenLanguageModel.fromJson(x))
                .toList()
            : null,
        status: json['status'],
        title: json['title'],
        credits: CreditsModel.fromJson(json['credits']),
        backdrop_path: json['backdrop_path'] ?? '');
  }
}

class GenreModel extends GenreEntity {
  GenreModel({required super.id, super.name});

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(id: json['id'], name: json['name']);
  }
}

class CreditsModel extends CreditsEntity {
  CreditsModel({required super.cast, required super.crew});

  factory CreditsModel.fromJson(Map<String, dynamic> json) {
    return CreditsModel(
      cast: (json['cast'] as List).map((i) => CastModel.fromJson(i)).toList(),
      crew: (json['crew'] as List).map((i) => CastModel.fromJson(i)).toList(),
    );
  }
}

class CastModel extends CastEntity {
  CastModel({
    required super.gender,
    required super.id,
    super.name,
    super.originalName,
    super.profilePath,
    super.castId,
    super.character,
    super.creditId,
    super.order,
    super.job,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      gender: json['gender'],
      id: json['id'],
      name: json['name'],
      originalName: json['original_name'],
      profilePath: json['profile_path'] ?? '',
      castId: json['cast_id'],
      character: json['character'] ?? '',
      creditId: json['credit_id'],
      order: json['order'],
      job: json['job'] ?? '',
    );
  }
}

class SpokenLanguageModel extends SpokenLanguageEntity {
  SpokenLanguageModel({
    super.englishName,
    super.name,
  });

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) {
    return SpokenLanguageModel(
      englishName: json['english_name'],
      name: json['name'],
    );
  }
}
