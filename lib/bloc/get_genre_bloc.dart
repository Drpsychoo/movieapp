import 'package:moviesapp/model/genre_response.dart';
import 'package:moviesapp/services/repository.dart';
import 'package:rxdart/rxdart.dart';

class GenreListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<GenreResponse> _subject =
      BehaviorSubject<GenreResponse>();
  getgenre() async {
    GenreResponse response = await _repository.getGenres();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<GenreResponse> get subject => _subject;
}

final genreBloc = GenreListBloc();
