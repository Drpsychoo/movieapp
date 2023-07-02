class Movie {
  final int id;
  final double popularity;
  final String title;
  final String backposter;
  final String overview;
  final String poster;
  final double rating;

  Movie(
    this.id,
    this.popularity,
    this.title,
    this.backposter,
    this.overview,
    this.rating,
    this.poster,
  );
  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popularity = json["popularity"],
        title = json["title"],
        backposter = json["backposter"],
        poster = json["popularity"],
        overview = json["overview"],
        rating = json["rating"];
}
