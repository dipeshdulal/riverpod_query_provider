import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_advanced/infrastructure/api.dart';
import 'package:riverpod_advanced/models/movie.dart';

abstract class MovieService {
  Future<Movie> getMovie(String id);
  Future<List<Movie>> getMovies();
}

final movieServiceProvider = Provider((ref) => GhibliMovieService());

class GhibliMovieService extends MovieService {
  @override
  Future<Movie> getMovie(String id) async {
    final response = await httpClient.get('/films/$id');
    return Movie.fromJson(response.data);
  }

  @override
  Future<List<Movie>> getMovies() async {
    final response = await httpClient.get('/films');
    final movies = response.data as List<dynamic>;
    return [
      for (final m in movies) Movie.fromJson(m),
    ];
  }
}
