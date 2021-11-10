import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @Default('') String id,
    @Default('') String title,
    @Default('') String original_title,
    @Default('') String original_title_romanised,
    @Default('') String image,
    @Default('') String movie_banner,
    @Default('') String description,
    @Default('') String director,
    @Default('') String producer,
    @Default('') String release_date,
    @Default('') String running_time,
    @Default('') String rt_score,
    @Default([]) List<String> people,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
