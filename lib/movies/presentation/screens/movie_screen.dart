import 'package:flutter/material.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
} 

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async{
      BaseMovieRemoteDataSource  baseMovieRemoteDataSource = MovieRemoteDataSource();
      BaseMoviesRepository  repository = MoviesRepository(baseMovieRemoteDataSource); // Initialize your repository here
      final result = await GetNowPlayingMovies(repository).execute();
      print(result);
      // Fetch movie data here
    }
}
