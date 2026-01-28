import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies.dart';
import 'package:movies_app/movies/presentation/controllers/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // Bloc
    sl.registerFactory(() => MoviesBloc(sl()));
    //Use Cases 
    sl.registerLazySingleton(() => GetNowPlayingMovies(sl()));
    //Repository
    sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
    // Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
      () => MovieRemoteDataSource());

  }
}
