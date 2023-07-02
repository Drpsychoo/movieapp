import 'package:moviesapp/model/movie.dart';

class MovieResponse {
  final List<Movie> movies;
  final String error;

  MovieResponse(this.movies, this.error);

  MovieResponse.fromJson(Map<String, dynamic> json)
      : movies =
            (json["result"] as List).map((i) => Movie.fromJson(i)).toList(),
        error = "";

  MovieResponse.withError(String errorvalue)
      : movies = [],
        error = errorvalue;
}
