import 'package:dio/dio.dart';
import 'package:movies_app/core/utils/app_constants.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';

class MovieRemoteDataSource {

 Future<List<MoviesModel>> getNowPlayingMovies() async{
  final response = await Dio().get(AppConstants.baseUrl);

  if(response.statusCode == 200) {
    return List<MoviesModel>.from((response.data['results'] as List).map((e) => MoviesModel.fromJson(e)));
  } else {
    
  }
 }
}