import 'package:moviesapp/model/genre.dart';

class GenreResponse {
  final List<Genre> genres;
  final String error;

  GenreResponse(this.genres, this.error);

  GenreResponse.fromJson(Map<String, dynamic> json)
      : genres =
            (json["results"] as List).map((i) => Genre.fromJson(i)).toList(),
        error = "";

  GenreResponse.withError(String errorvalue)
      : genres = [],
        error = errorvalue;
}
