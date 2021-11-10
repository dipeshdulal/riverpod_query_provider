import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_advanced/services/movie.dart';

final moviesProvider = FutureProvider(
  (ref) => ref.read(movieServiceProvider).getMovies(),
);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Studio Ghibli Movies"),
      ),
      body: ref.watch(moviesProvider).when(
            data: (movies) => RefreshIndicator(
              onRefresh: () async {
                ref.refresh(moviesProvider);
              },
              child: ListView(
                children: [
                  for (final movie in movies)
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
            ),
            error: (e, _) => Center(
              child: Text(e.toString()),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
