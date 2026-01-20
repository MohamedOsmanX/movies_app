import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetPopularMovies {

  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMovies(this.baseMoviesRepository);

  Future <List<Movie>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}