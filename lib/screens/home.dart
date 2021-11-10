import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:query_provider/query_provider.dart';
import 'package:riverpod_advanced/services/movie.dart';

final moviesProvider = QueryProvider(
  (ref) => ref.read(movieServiceProvider).getMovies(),
  shouldFetchOnMount: true,
);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesState = ref.watch(moviesProvider);
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
              leading: Image.network(movie.image),
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
