import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesModel extends Movie{

  const MoviesModel({
    required super.id,
    required super.title,
    required super.overview,
    required super.backdropPath,
    required super.generId,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MoviesModel.fromJson(Map<String , dynamic> json) => 
  MoviesModel(
    id: json['id'], 
    title: json['title'], 
    overview: json['overview'], 
    backdropPath: json['backdrop_path'], 
    generId:List<int>.from(json['generId'].map((e) => e)), 
    voteAverage: json['voteAverage'], 
    releaseDate: json['releaseDate']
    );
  
}