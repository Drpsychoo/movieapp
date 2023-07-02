import 'package:dio/dio.dart';
import 'package:moviesapp/model/genre_response.dart';
import 'package:moviesapp/model/movie_response.dart';
import 'package:moviesapp/model/person_response.dart';

class MovieRepository {
  final String apikey = "df645bd65bf15802017ade209e328ff8";
  static String mainurl = "https://api.themoviedb.org/3";
  final Dio dio = Dio();
  var getPopularurl = '$mainurl/movie/top_rated';
  var getMoviesurl = '$mainurl/discover/movie';
  var getPlayingurl = '$mainurl/movie/now_playing';
  var getGenresurl = '$mainurl/genre/list';
  var getPersonurl = '$mainurl/trending/person/week';

  Future<MovieResponse> getMovies() async {
    var params = {"api_key": apikey, "language": "en-US", "page": 1};
    try {
      Response response = await dio.get(getPopularurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error) {
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieResponse> getplayingmovies() async {
    var params = {"api_key": apikey, "language": "en-US", "page": 1};
    try {
      Response response = await dio.get(getPlayingurl, queryParameters: params);
      print('nowplayeing${response.data}');

      return MovieResponse.fromJson(response.data);
    } catch (error) {
      return MovieResponse.withError("$error");
    }
  }

  Future<GenreResponse> getGenres() async {
    var params = {"api_key": apikey, "language": "en-US", "page": 1};
    try {
      Response response = await dio.get(getGenresurl, queryParameters: params);
      return GenreResponse.fromJson(response.data);
    } catch (error) {
      return GenreResponse.withError("$error");
    }
  }

  Future<PersonResponse> getperson() async {
    var params = {"api_key": apikey, "language": "en-US", "page": 1};
    try {
      Response response = await dio.get(getPersonurl, queryParameters: params);
      return PersonResponse.fromJson(response.data);
    } catch (error) {
      return PersonResponse.withError("$error");
    }
  }

  Future<MovieResponse> getMoviesbyGenre(int id) async {
    var params = {
      "api_key": apikey,
      "language": "en-US",
      "page": 1,
      "with_genres": id,
    };
    try {
      Response response = await dio.get(getMoviesurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error) {
      return MovieResponse.withError("$error");
    }
  }
}
