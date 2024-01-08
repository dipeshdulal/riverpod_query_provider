import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:query_provider/query_provider.dart';
import 'package:riverpod_advanced/cache/movies_cache_manager.dart';
import 'package:riverpod_advanced/models/movie.dart';
import 'package:riverpod_advanced/services/movie.dart';

final moviesProvider = QueryProvider<List<Movie>>(
  // First call will use cache data(if available)
  // Next calls will always refetch the data from API
  (ref, previousState) => ref.read(movieServiceProvider).getMovies(
        useCache: previousState.data == null,
      ),
  shouldFetchOnMount: true,
);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesState = ref.watch(moviesProvider);
    ref.listen(moviesProvider, (previous, next) async {
      if (previous?.data == null && next.data != null) {
        final snackBarController = ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Updating")),
        );

        // * REVALIDATE
        await ref.read(moviesProvider.notifier).fetch();

        snackBarController.close();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Studio Ghibli Movies"),
      ),
      body: Column(
        children: [
          if (moviesState.data != null) const Expanded(child: MovieList()),
          if (moviesState.isLoading)
            const Expanded(child: Center(child: CircularProgressIndicator())),
          if (moviesState.hasError)
            Container(
              height: 50,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Error loading movies. Please try again',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class MovieList extends ConsumerWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(moviesProvider.notifier).fetch();
      },
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          for (final movie in ref.watch(moviesProvider).data ?? [])
            ListTile(
              title: Text(movie.title),
              subtitle: Text(
                movie.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CachedNetworkImage(
                imageUrl: movie.image,
                width: 56,
                cacheManager: moviesCacheManager,
                fadeInDuration: Duration.zero,
              ),
              onTap: () => Navigator.of(context).pushNamed(
                "/movie",
                arguments: {
                  "title": movie.title,
                  "id": movie.id,
                },
              ),
            ),
        ],
      ),
    );
  }
}
