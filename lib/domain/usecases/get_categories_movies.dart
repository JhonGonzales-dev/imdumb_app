
import 'package:dartz/dartz.dart';
import 'package:imdumb/domain/entities/movie_category.dart';

import '../../core/error/failures.dart';
import '../repositories/movie_repository.dart';

class GetCategoryMovies {
  final MovieRepository repository;

  GetCategoryMovies({required this.repository});
  Future<Either<Failure, List<CategoryEntity>>> call() async {
    return repository.getCategoriesMovies();
  }
}