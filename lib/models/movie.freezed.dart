// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {String id = '',
      String title = '',
      String original_title = '',
      String original_title_romanised = '',
      String image = '',
      String movie_banner = '',
      String description = '',
      String director = '',
      String producer = '',
      String release_date = '',
      String running_time = '',
      String rt_score = '',
      List<String> people = const []}) {
    return _Movie(
      id: id,
      title: title,
      original_title: original_title,
      original_title_romanised: original_title_romanised,
      image: image,
      movie_banner: movie_banner,
      description: description,
      director: director,
      producer: producer,
      release_date: release_date,
      running_time: running_time,
      rt_score: rt_score,
      people: people,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get original_title => throw _privateConstructorUsedError;
  String get original_title_romanised => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get movie_banner => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  String get release_date => throw _privateConstructorUsedError;
  String get running_time => throw _privateConstructorUsedError;
  String get rt_score => throw _privateConstructorUsedError;
  List<String> get people => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String original_title,
      String original_title_romanised,
      String image,
      String movie_banner,
      String description,
      String director,
      String producer,
      String release_date,
      String running_time,
      String rt_score,
      List<String> people});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? original_title = freezed,
    Object? original_title_romanised = freezed,
    Object? image = freezed,
    Object? movie_banner = freezed,
    Object? description = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? release_date = freezed,
    Object? running_time = freezed,
    Object? rt_score = freezed,
    Object? people = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      original_title_romanised: original_title_romanised == freezed
          ? _value.original_title_romanised
          : original_title_romanised // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      movie_banner: movie_banner == freezed
          ? _value.movie_banner
          : movie_banner // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      running_time: running_time == freezed
          ? _value.running_time
          : running_time // ignore: cast_nullable_to_non_nullable
              as String,
      rt_score: rt_score == freezed
          ? _value.rt_score
          : rt_score // ignore: cast_nullable_to_non_nullable
              as String,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String original_title,
      String original_title_romanised,
      String image,
      String movie_banner,
      String description,
      String director,
      String producer,
      String release_date,
      String running_time,
      String rt_score,
      List<String> people});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? original_title = freezed,
    Object? original_title_romanised = freezed,
    Object? image = freezed,
    Object? movie_banner = freezed,
    Object? description = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? release_date = freezed,
    Object? running_time = freezed,
    Object? rt_score = freezed,
    Object? people = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      original_title_romanised: original_title_romanised == freezed
          ? _value.original_title_romanised
          : original_title_romanised // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      movie_banner: movie_banner == freezed
          ? _value.movie_banner
          : movie_banner // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      running_time: running_time == freezed
          ? _value.running_time
          : running_time // ignore: cast_nullable_to_non_nullable
              as String,
      rt_score: rt_score == freezed
          ? _value.rt_score
          : rt_score // ignore: cast_nullable_to_non_nullable
              as String,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {this.id = '',
      this.title = '',
      this.original_title = '',
      this.original_title_romanised = '',
      this.image = '',
      this.movie_banner = '',
      this.description = '',
      this.director = '',
      this.producer = '',
      this.release_date = '',
      this.running_time = '',
      this.rt_score = '',
      this.people = const []});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String original_title;
  @JsonKey(defaultValue: '')
  @override
  final String original_title_romanised;
  @JsonKey(defaultValue: '')
  @override
  final String image;
  @JsonKey(defaultValue: '')
  @override
  final String movie_banner;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: '')
  @override
  final String director;
  @JsonKey(defaultValue: '')
  @override
  final String producer;
  @JsonKey(defaultValue: '')
  @override
  final String release_date;
  @JsonKey(defaultValue: '')
  @override
  final String running_time;
  @JsonKey(defaultValue: '')
  @override
  final String rt_score;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> people;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, original_title: $original_title, original_title_romanised: $original_title_romanised, image: $image, movie_banner: $movie_banner, description: $description, director: $director, producer: $producer, release_date: $release_date, running_time: $running_time, rt_score: $rt_score, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(
                    other.original_title_romanised, original_title_romanised) ||
                other.original_title_romanised == original_title_romanised) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.movie_banner, movie_banner) ||
                other.movie_banner == movie_banner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.running_time, running_time) ||
                other.running_time == running_time) &&
            (identical(other.rt_score, rt_score) ||
                other.rt_score == rt_score) &&
            const DeepCollectionEquality().equals(other.people, people));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      original_title,
      original_title_romanised,
      image,
      movie_banner,
      description,
      director,
      producer,
      release_date,
      running_time,
      rt_score,
      const DeepCollectionEquality().hash(people));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {String id,
      String title,
      String original_title,
      String original_title_romanised,
      String image,
      String movie_banner,
      String description,
      String director,
      String producer,
      String release_date,
      String running_time,
      String rt_score,
      List<String> people}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get original_title;
  @override
  String get original_title_romanised;
  @override
  String get image;
  @override
  String get movie_banner;
  @override
  String get description;
  @override
  String get director;
  @override
  String get producer;
  @override
  String get release_date;
  @override
  String get running_time;
  @override
  String get rt_score;
  @override
  List<String> get people;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
