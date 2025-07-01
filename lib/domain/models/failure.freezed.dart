// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Exception? exception) database,
    required TResult Function(String message, Exception? exception) auth,
    required TResult Function(String message, Exception? exception) network,
    required TResult Function(String message, Exception? exception) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Exception? exception)? database,
    TResult? Function(String message, Exception? exception)? auth,
    TResult? Function(String message, Exception? exception)? network,
    TResult? Function(String message, Exception? exception)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Exception? exception)? database,
    TResult Function(String message, Exception? exception)? auth,
    TResult Function(String message, Exception? exception)? network,
    TResult Function(String message, Exception? exception)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(AuthFailure value)? auth,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message, Exception? exception});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatabaseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DatabaseFailureImplCopyWith(_$DatabaseFailureImpl value,
          $Res Function(_$DatabaseFailureImpl) then) =
      __$$DatabaseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Exception? exception});
}

/// @nodoc
class __$$DatabaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseFailureImpl>
    implements _$$DatabaseFailureImplCopyWith<$Res> {
  __$$DatabaseFailureImplCopyWithImpl(
      _$DatabaseFailureImpl _value, $Res Function(_$DatabaseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$DatabaseFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureImpl implements DatabaseFailure {
  const _$DatabaseFailureImpl(this.message, [this.exception]);

  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'Failure.database(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      __$$DatabaseFailureImplCopyWithImpl<_$DatabaseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Exception? exception) database,
    required TResult Function(String message, Exception? exception) auth,
    required TResult Function(String message, Exception? exception) network,
    required TResult Function(String message, Exception? exception) unknown,
  }) {
    return database(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Exception? exception)? database,
    TResult? Function(String message, Exception? exception)? auth,
    TResult? Function(String message, Exception? exception)? network,
    TResult? Function(String message, Exception? exception)? unknown,
  }) {
    return database?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Exception? exception)? database,
    TResult Function(String message, Exception? exception)? auth,
    TResult Function(String message, Exception? exception)? network,
    TResult Function(String message, Exception? exception)? unknown,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(AuthFailure value)? auth,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailure implements Failure {
  const factory DatabaseFailure(final String message,
      [final Exception? exception]) = _$DatabaseFailureImpl;

  @override
  String get message;
  @override
  Exception? get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Exception? exception});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$AuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl(this.message, [this.exception]);

  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'Failure.auth(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Exception? exception) database,
    required TResult Function(String message, Exception? exception) auth,
    required TResult Function(String message, Exception? exception) network,
    required TResult Function(String message, Exception? exception) unknown,
  }) {
    return auth(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Exception? exception)? database,
    TResult? Function(String message, Exception? exception)? auth,
    TResult? Function(String message, Exception? exception)? network,
    TResult? Function(String message, Exception? exception)? unknown,
  }) {
    return auth?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Exception? exception)? database,
    TResult Function(String message, Exception? exception)? auth,
    TResult Function(String message, Exception? exception)? network,
    TResult Function(String message, Exception? exception)? unknown,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(AuthFailure value)? auth,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure(final String message,
      [final Exception? exception]) = _$AuthFailureImpl;

  @override
  String get message;
  @override
  Exception? get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Exception? exception});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$NetworkFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl(this.message, [this.exception]);

  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'Failure.network(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Exception? exception) database,
    required TResult Function(String message, Exception? exception) auth,
    required TResult Function(String message, Exception? exception) network,
    required TResult Function(String message, Exception? exception) unknown,
  }) {
    return network(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Exception? exception)? database,
    TResult? Function(String message, Exception? exception)? auth,
    TResult? Function(String message, Exception? exception)? network,
    TResult? Function(String message, Exception? exception)? unknown,
  }) {
    return network?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Exception? exception)? database,
    TResult Function(String message, Exception? exception)? auth,
    TResult Function(String message, Exception? exception)? network,
    TResult Function(String message, Exception? exception)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(AuthFailure value)? auth,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure(final String message,
      [final Exception? exception]) = _$NetworkFailureImpl;

  @override
  String get message;
  @override
  Exception? get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Exception? exception});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$UnknownFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl(this.message, [this.exception]);

  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'Failure.unknown(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Exception? exception) database,
    required TResult Function(String message, Exception? exception) auth,
    required TResult Function(String message, Exception? exception) network,
    required TResult Function(String message, Exception? exception) unknown,
  }) {
    return unknown(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Exception? exception)? database,
    TResult? Function(String message, Exception? exception)? auth,
    TResult? Function(String message, Exception? exception)? network,
    TResult? Function(String message, Exception? exception)? unknown,
  }) {
    return unknown?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Exception? exception)? database,
    TResult Function(String message, Exception? exception)? auth,
    TResult Function(String message, Exception? exception)? network,
    TResult Function(String message, Exception? exception)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(AuthFailure value)? auth,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure(final String message,
      [final Exception? exception]) = _$UnknownFailureImpl;

  @override
  String get message;
  @override
  Exception? get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
