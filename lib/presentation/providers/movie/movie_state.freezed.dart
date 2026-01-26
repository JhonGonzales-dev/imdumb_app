// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity> data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<MovieEntity> data) : _data = data;

  final List<MovieEntity> _data;
  @override
  List<MovieEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MovieState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MovieState {
  const factory _Success(final List<MovieEntity> data) = _$SuccessImpl;

  List<MovieEntity> get data;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCategoryImplCopyWith<$Res> {
  factory _$$SuccessCategoryImplCopyWith(_$SuccessCategoryImpl value,
          $Res Function(_$SuccessCategoryImpl) then) =
      __$$SuccessCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryEntity> data});
}

/// @nodoc
class __$$SuccessCategoryImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$SuccessCategoryImpl>
    implements _$$SuccessCategoryImplCopyWith<$Res> {
  __$$SuccessCategoryImplCopyWithImpl(
      _$SuccessCategoryImpl _value, $Res Function(_$SuccessCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessCategoryImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessCategoryImpl implements _SuccessCategory {
  const _$SuccessCategoryImpl(final List<CategoryEntity> data) : _data = data;

  final List<CategoryEntity> _data;
  @override
  List<CategoryEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MovieState.successCat(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCategoryImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCategoryImplCopyWith<_$SuccessCategoryImpl> get copyWith =>
      __$$SuccessCategoryImplCopyWithImpl<_$SuccessCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return successCat(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return successCat?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successCat != null) {
      return successCat(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return successCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return successCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successCat != null) {
      return successCat(this);
    }
    return orElse();
  }
}

abstract class _SuccessCategory implements MovieState {
  const factory _SuccessCategory(final List<CategoryEntity> data) =
      _$SuccessCategoryImpl;

  List<CategoryEntity> get data;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCategoryImplCopyWith<_$SuccessCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDiscoverImplCopyWith<$Res> {
  factory _$$SuccessDiscoverImplCopyWith(_$SuccessDiscoverImpl value,
          $Res Function(_$SuccessDiscoverImpl) then) =
      __$$SuccessDiscoverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieDiscoverEntity> data});
}

/// @nodoc
class __$$SuccessDiscoverImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$SuccessDiscoverImpl>
    implements _$$SuccessDiscoverImplCopyWith<$Res> {
  __$$SuccessDiscoverImplCopyWithImpl(
      _$SuccessDiscoverImpl _value, $Res Function(_$SuccessDiscoverImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessDiscoverImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieDiscoverEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessDiscoverImpl implements _SuccessDiscover {
  const _$SuccessDiscoverImpl(final List<MovieDiscoverEntity> data)
      : _data = data;

  final List<MovieDiscoverEntity> _data;
  @override
  List<MovieDiscoverEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MovieState.successDiscover(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDiscoverImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDiscoverImplCopyWith<_$SuccessDiscoverImpl> get copyWith =>
      __$$SuccessDiscoverImplCopyWithImpl<_$SuccessDiscoverImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return successDiscover(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return successDiscover?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successDiscover != null) {
      return successDiscover(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return successDiscover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return successDiscover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successDiscover != null) {
      return successDiscover(this);
    }
    return orElse();
  }
}

abstract class _SuccessDiscover implements MovieState {
  const factory _SuccessDiscover(final List<MovieDiscoverEntity> data) =
      _$SuccessDiscoverImpl;

  List<MovieDiscoverEntity> get data;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDiscoverImplCopyWith<_$SuccessDiscoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDetailImplCopyWith<$Res> {
  factory _$$SuccessDetailImplCopyWith(
          _$SuccessDetailImpl value, $Res Function(_$SuccessDetailImpl) then) =
      __$$SuccessDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetailEntity data});
}

/// @nodoc
class __$$SuccessDetailImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$SuccessDetailImpl>
    implements _$$SuccessDetailImplCopyWith<$Res> {
  __$$SuccessDetailImplCopyWithImpl(
      _$SuccessDetailImpl _value, $Res Function(_$SuccessDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessDetailImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieDetailEntity,
    ));
  }
}

/// @nodoc

class _$SuccessDetailImpl implements _SuccessDetail {
  const _$SuccessDetailImpl(this.data);

  @override
  final MovieDetailEntity data;

  @override
  String toString() {
    return 'MovieState.successDetailMovie(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDetailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDetailImplCopyWith<_$SuccessDetailImpl> get copyWith =>
      __$$SuccessDetailImplCopyWithImpl<_$SuccessDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return successDetailMovie(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return successDetailMovie?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successDetailMovie != null) {
      return successDetailMovie(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return successDetailMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return successDetailMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successDetailMovie != null) {
      return successDetailMovie(this);
    }
    return orElse();
  }
}

abstract class _SuccessDetail implements MovieState {
  const factory _SuccessDetail(final MovieDetailEntity data) =
      _$SuccessDetailImpl;

  MovieDetailEntity get data;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDetailImplCopyWith<_$SuccessDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MovieState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ChangeSlideImplCopyWith<$Res> {
  factory _$$ChangeSlideImplCopyWith(
          _$ChangeSlideImpl value, $Res Function(_$ChangeSlideImpl) then) =
      __$$ChangeSlideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSlideImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$ChangeSlideImpl>
    implements _$$ChangeSlideImplCopyWith<$Res> {
  __$$ChangeSlideImplCopyWithImpl(
      _$ChangeSlideImpl _value, $Res Function(_$ChangeSlideImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSlideImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSlideImpl implements _ChangeSlide {
  const _$ChangeSlideImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MovieState.changeCurrentSlide(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSlideImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSlideImplCopyWith<_$ChangeSlideImpl> get copyWith =>
      __$$ChangeSlideImplCopyWithImpl<_$ChangeSlideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return changeCurrentSlide(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return changeCurrentSlide?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (changeCurrentSlide != null) {
      return changeCurrentSlide(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return changeCurrentSlide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return changeCurrentSlide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (changeCurrentSlide != null) {
      return changeCurrentSlide(this);
    }
    return orElse();
  }
}

abstract class _ChangeSlide implements MovieState {
  const factory _ChangeSlide(final int index) = _$ChangeSlideImpl;

  int get index;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSlideImplCopyWith<_$ChangeSlideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MovieEntity> data) success,
    required TResult Function(List<CategoryEntity> data) successCat,
    required TResult Function(List<MovieDiscoverEntity> data) successDiscover,
    required TResult Function(MovieDetailEntity data) successDetailMovie,
    required TResult Function() loading,
    required TResult Function(int index) changeCurrentSlide,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MovieEntity> data)? success,
    TResult? Function(List<CategoryEntity> data)? successCat,
    TResult? Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult? Function(MovieDetailEntity data)? successDetailMovie,
    TResult? Function()? loading,
    TResult? Function(int index)? changeCurrentSlide,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MovieEntity> data)? success,
    TResult Function(List<CategoryEntity> data)? successCat,
    TResult Function(List<MovieDiscoverEntity> data)? successDiscover,
    TResult Function(MovieDetailEntity data)? successDetailMovie,
    TResult Function()? loading,
    TResult Function(int index)? changeCurrentSlide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCategory value) successCat,
    required TResult Function(_SuccessDiscover value) successDiscover,
    required TResult Function(_SuccessDetail value) successDetailMovie,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeSlide value) changeCurrentSlide,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCategory value)? successCat,
    TResult? Function(_SuccessDiscover value)? successDiscover,
    TResult? Function(_SuccessDetail value)? successDetailMovie,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeSlide value)? changeCurrentSlide,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCategory value)? successCat,
    TResult Function(_SuccessDiscover value)? successDiscover,
    TResult Function(_SuccessDetail value)? successDetailMovie,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeSlide value)? changeCurrentSlide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MovieState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
