# Query Provider Plugin 
Query Provider is similar to future provider but with caching built in.

## Goal
- If data already present in cache, load data from cache and later update the state with actual data not from api.
- If data not in cache, put into cache and return the data.

## Usage:

##### `QueryProvider<ModelType>`
```dart
final moviesProvider = QueryProvider(
  (ref) => ref.read(movieServiceProvider).getMovies(),
  shouldFetchOnMount: true,
);
final moviesState = ref.watch(moviesProvider);
```

##### `QueryProviderFamily<ModelType, ParamType>`
```dart
final movieProvider = QueryProviderFamily<Movie, String>(
  (ref, id) => ref.read(movieServiceProvider).getMovie(id),
  shouldFetchOnMount: true,
);

final movieState = ref.watch(movieProvider(args["id"]));
final movie = movieState.data;
```