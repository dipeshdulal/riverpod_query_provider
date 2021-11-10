// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$APIStateTearOff {
  const _$APIStateTearOff();

  _APIStateLoading<T> loading<T>(T? cache) {
    return _APIStateLoading<T>(
      cache,
    );
  }

  _APIStateIdle<T> idle<T>(T? initial) {
    return _APIStateIdle<T>(
      initial,
    );
  }

  _APIStateData<T> data<T>(T data) {
    return _APIStateData<T>(
      data,
    );
  }

  _APIStateError<T> error<T>({T? cache, String? error, StackTrace? trace}) {
    return _APIStateError<T>(
      cache: cache,
      error: error,
      trace: trace,
    );
  }
}

/// @nodoc
const $APIState = _$APIStateTearOff();

/// @nodoc
mixin _$APIState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? cache) loading,
    required TResult Function(T? initial) idle,
    required TResult Function(T data) data,
    required TResult Function(T? cache, String? error, StackTrace? trace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIStateLoading<T> value) loading,
    required TResult Function(_APIStateIdle<T> value) idle,
    required TResult Function(_APIStateData<T> value) data,
    required TResult Function(_APIStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIStateCopyWith<T, $Res> {
  factory $APIStateCopyWith(
          APIState<T> value, $Res Function(APIState<T>) then) =
      _$APIStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$APIStateCopyWithImpl<T, $Res> implements $APIStateCopyWith<T, $Res> {
  _$APIStateCopyWithImpl(this._value, this._then);

  final APIState<T> _value;
  // ignore: unused_field
  final $Res Function(APIState<T>) _then;
}

/// @nodoc
abstract class _$APIStateLoadingCopyWith<T, $Res> {
  factory _$APIStateLoadingCopyWith(
          _APIStateLoading<T> value, $Res Function(_APIStateLoading<T>) then) =
      __$APIStateLoadingCopyWithImpl<T, $Res>;
  $Res call({T? cache});
}

/// @nodoc
class __$APIStateLoadingCopyWithImpl<T, $Res>
    extends _$APIStateCopyWithImpl<T, $Res>
    implements _$APIStateLoadingCopyWith<T, $Res> {
  __$APIStateLoadingCopyWithImpl(
      _APIStateLoading<T> _value, $Res Function(_APIStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _APIStateLoading<T>));

  @override
  _APIStateLoading<T> get _value => super._value as _APIStateLoading<T>;

  @override
  $Res call({
    Object? cache = freezed,
  }) {
    return _then(_APIStateLoading<T>(
      cache == freezed
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_APIStateLoading<T> extends _APIStateLoading<T> {
  const _$_APIStateLoading(this.cache) : super._();

  @override
  final T? cache;

  @override
  String toString() {
    return 'APIState<$T>.loading(cache: $cache)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIStateLoading<T> &&
            const DeepCollectionEquality().equals(other.cache, cache));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cache));

  @JsonKey(ignore: true)
  @override
  _$APIStateLoadingCopyWith<T, _APIStateLoading<T>> get copyWith =>
      __$APIStateLoadingCopyWithImpl<T, _APIStateLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? cache) loading,
    required TResult Function(T? initial) idle,
    required TResult Function(T data) data,
    required TResult Function(T? cache, String? error, StackTrace? trace) error,
  }) {
    return loading(cache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
  }) {
    return loading?.call(cache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIStateLoading<T> value) loading,
    required TResult Function(_APIStateIdle<T> value) idle,
    required TResult Function(_APIStateData<T> value) data,
    required TResult Function(_APIStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _APIStateLoading<T> extends APIState<T> {
  const factory _APIStateLoading(T? cache) = _$_APIStateLoading<T>;
  const _APIStateLoading._() : super._();

  T? get cache;
  @JsonKey(ignore: true)
  _$APIStateLoadingCopyWith<T, _APIStateLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$APIStateIdleCopyWith<T, $Res> {
  factory _$APIStateIdleCopyWith(
          _APIStateIdle<T> value, $Res Function(_APIStateIdle<T>) then) =
      __$APIStateIdleCopyWithImpl<T, $Res>;
  $Res call({T? initial});
}

/// @nodoc
class __$APIStateIdleCopyWithImpl<T, $Res>
    extends _$APIStateCopyWithImpl<T, $Res>
    implements _$APIStateIdleCopyWith<T, $Res> {
  __$APIStateIdleCopyWithImpl(
      _APIStateIdle<T> _value, $Res Function(_APIStateIdle<T>) _then)
      : super(_value, (v) => _then(v as _APIStateIdle<T>));

  @override
  _APIStateIdle<T> get _value => super._value as _APIStateIdle<T>;

  @override
  $Res call({
    Object? initial = freezed,
  }) {
    return _then(_APIStateIdle<T>(
      initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_APIStateIdle<T> extends _APIStateIdle<T> {
  const _$_APIStateIdle(this.initial) : super._();

  @override
  final T? initial;

  @override
  String toString() {
    return 'APIState<$T>.idle(initial: $initial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIStateIdle<T> &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$APIStateIdleCopyWith<T, _APIStateIdle<T>> get copyWith =>
      __$APIStateIdleCopyWithImpl<T, _APIStateIdle<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? cache) loading,
    required TResult Function(T? initial) idle,
    required TResult Function(T data) data,
    required TResult Function(T? cache, String? error, StackTrace? trace) error,
  }) {
    return idle(initial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
  }) {
    return idle?.call(initial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(initial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIStateLoading<T> value) loading,
    required TResult Function(_APIStateIdle<T> value) idle,
    required TResult Function(_APIStateData<T> value) data,
    required TResult Function(_APIStateError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _APIStateIdle<T> extends APIState<T> {
  const factory _APIStateIdle(T? initial) = _$_APIStateIdle<T>;
  const _APIStateIdle._() : super._();

  T? get initial;
  @JsonKey(ignore: true)
  _$APIStateIdleCopyWith<T, _APIStateIdle<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$APIStateDataCopyWith<T, $Res> {
  factory _$APIStateDataCopyWith(
          _APIStateData<T> value, $Res Function(_APIStateData<T>) then) =
      __$APIStateDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$APIStateDataCopyWithImpl<T, $Res>
    extends _$APIStateCopyWithImpl<T, $Res>
    implements _$APIStateDataCopyWith<T, $Res> {
  __$APIStateDataCopyWithImpl(
      _APIStateData<T> _value, $Res Function(_APIStateData<T>) _then)
      : super(_value, (v) => _then(v as _APIStateData<T>));

  @override
  _APIStateData<T> get _value => super._value as _APIStateData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_APIStateData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_APIStateData<T> extends _APIStateData<T> {
  const _$_APIStateData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'APIState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$APIStateDataCopyWith<T, _APIStateData<T>> get copyWith =>
      __$APIStateDataCopyWithImpl<T, _APIStateData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? cache) loading,
    required TResult Function(T? initial) idle,
    required TResult Function(T data) data,
    required TResult Function(T? cache, String? error, StackTrace? trace) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIStateLoading<T> value) loading,
    required TResult Function(_APIStateIdle<T> value) idle,
    required TResult Function(_APIStateData<T> value) data,
    required TResult Function(_APIStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _APIStateData<T> extends APIState<T> {
  const factory _APIStateData(T data) = _$_APIStateData<T>;
  const _APIStateData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$APIStateDataCopyWith<T, _APIStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$APIStateErrorCopyWith<T, $Res> {
  factory _$APIStateErrorCopyWith(
          _APIStateError<T> value, $Res Function(_APIStateError<T>) then) =
      __$APIStateErrorCopyWithImpl<T, $Res>;
  $Res call({T? cache, String? error, StackTrace? trace});
}

/// @nodoc
class __$APIStateErrorCopyWithImpl<T, $Res>
    extends _$APIStateCopyWithImpl<T, $Res>
    implements _$APIStateErrorCopyWith<T, $Res> {
  __$APIStateErrorCopyWithImpl(
      _APIStateError<T> _value, $Res Function(_APIStateError<T>) _then)
      : super(_value, (v) => _then(v as _APIStateError<T>));

  @override
  _APIStateError<T> get _value => super._value as _APIStateError<T>;

  @override
  $Res call({
    Object? cache = freezed,
    Object? error = freezed,
    Object? trace = freezed,
  }) {
    return _then(_APIStateError<T>(
      cache: cache == freezed
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as T?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      trace: trace == freezed
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_APIStateError<T> extends _APIStateError<T> {
  const _$_APIStateError({this.cache, this.error, this.trace}) : super._();

  @override
  final T? cache;
  @override
  final String? error;
  @override
  final StackTrace? trace;

  @override
  String toString() {
    return 'APIState<$T>.error(cache: $cache, error: $error, trace: $trace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIStateError<T> &&
            const DeepCollectionEquality().equals(other.cache, cache) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.trace, trace) || other.trace == trace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cache), error, trace);

  @JsonKey(ignore: true)
  @override
  _$APIStateErrorCopyWith<T, _APIStateError<T>> get copyWith =>
      __$APIStateErrorCopyWithImpl<T, _APIStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? cache) loading,
    required TResult Function(T? initial) idle,
    required TResult Function(T data) data,
    required TResult Function(T? cache, String? error, StackTrace? trace) error,
  }) {
    return error(cache, this.error, trace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
  }) {
    return error?.call(cache, this.error, trace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? cache)? loading,
    TResult Function(T? initial)? idle,
    TResult Function(T data)? data,
    TResult Function(T? cache, String? error, StackTrace? trace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(cache, this.error, trace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIStateLoading<T> value) loading,
    required TResult Function(_APIStateIdle<T> value) idle,
    required TResult Function(_APIStateData<T> value) data,
    required TResult Function(_APIStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIStateLoading<T> value)? loading,
    TResult Function(_APIStateIdle<T> value)? idle,
    TResult Function(_APIStateData<T> value)? data,
    TResult Function(_APIStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _APIStateError<T> extends APIState<T> {
  const factory _APIStateError({T? cache, String? error, StackTrace? trace}) =
      _$_APIStateError<T>;
  const _APIStateError._() : super._();

  T? get cache;
  String? get error;
  StackTrace? get trace;
  @JsonKey(ignore: true)
  _$APIStateErrorCopyWith<T, _APIStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
