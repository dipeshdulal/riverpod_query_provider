import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_advanced/cache/movies_cache_manager.dart';
import 'package:riverpod_advanced/infrastructure/api.dart';
import 'package:riverpod_advanced/models/movie.dart';

abstract class MovieService {
  Future<Movie> getMovie(String id);
  Future<List<Movie>> getMovies();
}

final movieServiceProvider = Provider((ref) => GhibliMovieService());

class GhibliMovieService extends MovieService {
  @override
  Future<Movie> getMovie(String id, {bool useCache = false}) async {
    final path = '/films/$id';

    // Cache
    var didFindCache = false;
    Map<String, Object?>? cachedJson;
    if (useCache) {
      cachedJson =
          (await moviesCacheManager.tryGetJson(path)) as Map<String, Object?>?;
      didFindCache = cachedJson != null;
    }

    // Parse cache or send request
    final moviesJson = cachedJson ?? (await httpClient.get(path)).data;
    final movie = Movie.fromJson(moviesJson);

    // Saving cache after json parse to guarantee it is not an error json
    if (!didFindCache)
      Future(() => moviesCacheManager.putJson(
            path,
            moviesJson,
          ));

    return movie;
  }

  @override
  Future<List<Movie>> getMovies({bool useCache = false}) async {
    final path = '/films';

    // Cache
    var didFindCache = false;
    List<Object?>? responseJson;
    if (useCache) {
      responseJson =
          (await moviesCacheManager.tryGetJson(path)) as List<Object?>?;
      didFindCache = responseJson != null;
    }

    // Parse cache or send request
    final moviesJson = responseJson ?? (await httpClient.get(path)).data;
    final movies = [
      for (final movieJson in moviesJson) Movie.fromJson(movieJson),
    ];

    // Saving cache after json parse to guarantee it is not an error json
    if (!didFindCache)
      Future(() => moviesCacheManager.putJson(
            path,
            moviesJson,
          ));

    return movies;
  }
}
