class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = '3e695520f495f28ba75b8edf582830c8';
  static const String nowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}