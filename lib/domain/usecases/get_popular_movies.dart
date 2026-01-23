import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/movie.dart';
import '../repositories/movie_repository.dart';


/// Single Responsibility Principle: Esta clase SOLO se encarga de ejecutar el caso de uso
/// "obtener películas populares".
/// 
/// ❌ No maneja UI
/// ❌ No hace parsing JSON
/// ❌ No conoce Dio ni Firebase

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies({required this.repository});

  Future<Either<Failure, List<MovieEntity>>> call() async {
    return repository.getPopularMovies();
  }
}
