import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api.state.freezed.dart';

@freezed
class APIState<T> with _$APIState<T> {
  const APIState._();

  const factory APIState.loading(T? cache) = _APIStateLoading<T>;
  const factory APIState.idle(T? initial) = _APIStateIdle<T>;
  const factory APIState.data(T data) = _APIStateData<T>;
  const factory APIState.error({T? cache, String? error, StackTrace? trace}) =
      _APIStateError<T>;

  T? get data => when(
        loading: (cache) => cache,
        idle: (initial) => initial,
        data: (data) => data,
        error: (cache, _, __) => cache,
      );

  bool get isLoading => maybeWhen(
        loading: (cache) => cache == null,
        orElse: () => false,
      );

  bool get hasError => maybeWhen(
        error: (_, __, ___) => true,
        orElse: () => false,
      );
}
