class MovieDetailEntity {
  final List<GenreEntity>? genres;
  final String? homepage;
  final int id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double popularity;
  final String? posterPath;
  final DateTime releaseDate;
  final List<SpokenLanguageEntity>? spokenLanguages;
  final String? status;
  final String? title;
  final CreditsEntity credits;
  final String? backdrop_path;

  MovieDetailEntity({
    this.genres,
    this.homepage,
    required this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    required this.popularity,
    this.posterPath,
    required this.releaseDate,
    this.spokenLanguages,
    this.status,
    this.title,
    this.backdrop_path,
    required this.credits,
  });
}

class CreditsEntity {
  final List<CastEntity> cast;
  final List<CastEntity> crew;

  CreditsEntity({
    required this.cast,
    required this.crew,
  });
}

class CastEntity {
  final int gender;
  final int id;
  final String? name;
  final String? originalName;
  final String? profilePath;
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;

  final String? job;

  CastEntity({
    required this.gender,
    required this.id,
    this.name,
    this.originalName,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.job,
  });
}

class GenreEntity {
  final int id;
  final String? name;

  GenreEntity({required this.id, this.name});
}

class SpokenLanguageEntity {
  final String? englishName;
  final String? name;

  SpokenLanguageEntity({
    this.englishName,
    this.name,
  });
}
