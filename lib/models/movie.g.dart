// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      original_title: json['original_title'] as String? ?? '',
      original_title_romanised:
          json['original_title_romanised'] as String? ?? '',
      image: json['image'] as String? ?? '',
      movie_banner: json['movie_banner'] as String? ?? '',
      description: json['description'] as String? ?? '',
      director: json['director'] as String? ?? '',
      producer: json['producer'] as String? ?? '',
      release_date: json['release_date'] as String? ?? '',
      running_time: json['running_time'] as String? ?? '',
      rt_score: json['rt_score'] as String? ?? '',
      people: (json['people'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.original_title,
      'original_title_romanised': instance.original_title_romanised,
      'image': instance.image,
      'movie_banner': instance.movie_banner,
      'description': instance.description,
      'director': instance.director,
      'producer': instance.producer,
      'release_date': instance.release_date,
      'running_time': instance.running_time,
      'rt_score': instance.rt_score,
      'people': instance.people,
    };
