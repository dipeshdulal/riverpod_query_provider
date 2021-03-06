import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:query_provider/query_provider.dart';
import 'package:riverpod_advanced/models/movie.dart';
import 'package:riverpod_advanced/services/movie.dart';

final movieProvider = QueryProviderFamily<Movie, String>(
  (ref, id) => ref.read(movieServiceProvider).getMovie(id),
  shouldFetchOnMount: true,
);

class MoviePage extends ConsumerWidget {
  const MoviePage({Key? key, Object? args})
      : args = args as Map<String, dynamic>,
        super(key: key);

  final Map<String, dynamic> args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieProvider(args["id"]));
    final movie = movieState.data;
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title'] ?? ''),
      ),
      body: Column(
        children: [
          if (movieState.isLoading)
            const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          if (movieState.data != null)
            Expanded(
              child: ListView(
                children: [
                  Image.network(
                    movie!.movie_banner,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movie.original_title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movie.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(height: 1.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(child: Image.network(movie.image)),
                        Expanded(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(movie.director),
                                subtitle: Text("Director"),
                              ),
                              ListTile(
                                title: Text(movie.producer),
                                subtitle: Text("Producer"),
                              ),
                              ListTile(
                                title: Text(movie.release_date),
                                subtitle: Text("Release Date"),
                              ),
                              ListTile(
                                title: Text(movie.running_time),
                                subtitle: Text("Running Time"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
