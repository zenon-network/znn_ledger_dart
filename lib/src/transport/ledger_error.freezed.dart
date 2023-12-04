// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LedgerError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String origMessage) connectionError,
    required TResult Function(StatusWord statusWord) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String origMessage)? connectionError,
    TResult? Function(StatusWord statusWord)? responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String origMessage)? connectionError,
    TResult Function(StatusWord statusWord)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(ResponseError value) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(ResponseError value)? responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(ResponseError value)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerErrorCopyWith<$Res> {
  factory $LedgerErrorCopyWith(
          LedgerError value, $Res Function(LedgerError) then) =
      _$LedgerErrorCopyWithImpl<$Res, LedgerError>;
}

/// @nodoc
class _$LedgerErrorCopyWithImpl<$Res, $Val extends LedgerError>
    implements $LedgerErrorCopyWith<$Res> {
  _$LedgerErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectionErrorImplCopyWith<$Res> {
  factory _$$ConnectionErrorImplCopyWith(_$ConnectionErrorImpl value,
          $Res Function(_$ConnectionErrorImpl) then) =
      __$$ConnectionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String origMessage});
}

/// @nodoc
class __$$ConnectionErrorImplCopyWithImpl<$Res>
    extends _$LedgerErrorCopyWithImpl<$Res, _$ConnectionErrorImpl>
    implements _$$ConnectionErrorImplCopyWith<$Res> {
  __$$ConnectionErrorImplCopyWithImpl(
      _$ConnectionErrorImpl _value, $Res Function(_$ConnectionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origMessage = null,
  }) {
    return _then(_$ConnectionErrorImpl(
      origMessage: null == origMessage
          ? _value.origMessage
          : origMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorImpl implements ConnectionError {
  const _$ConnectionErrorImpl({required this.origMessage});

  @override
  final String origMessage;

  @override
  String toString() {
    return 'LedgerError.connectionError(origMessage: $origMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorImpl &&
            (identical(other.origMessage, origMessage) ||
                other.origMessage == origMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, origMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorImplCopyWith<_$ConnectionErrorImpl> get copyWith =>
      __$$ConnectionErrorImplCopyWithImpl<_$ConnectionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String origMessage) connectionError,
    required TResult Function(StatusWord statusWord) responseError,
  }) {
    return connectionError(origMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String origMessage)? connectionError,
    TResult? Function(StatusWord statusWord)? responseError,
  }) {
    return connectionError?.call(origMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String origMessage)? connectionError,
    TResult Function(StatusWord statusWord)? responseError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(origMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(ResponseError value) responseError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(ResponseError value)? responseError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError implements LedgerError {
  const factory ConnectionError({required final String origMessage}) =
      _$ConnectionErrorImpl;

  String get origMessage;
  @JsonKey(ignore: true)
  _$$ConnectionErrorImplCopyWith<_$ConnectionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResponseErrorImplCopyWith<$Res> {
  factory _$$ResponseErrorImplCopyWith(
          _$ResponseErrorImpl value, $Res Function(_$ResponseErrorImpl) then) =
      __$$ResponseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StatusWord statusWord});
}

/// @nodoc
class __$$ResponseErrorImplCopyWithImpl<$Res>
    extends _$LedgerErrorCopyWithImpl<$Res, _$ResponseErrorImpl>
    implements _$$ResponseErrorImplCopyWith<$Res> {
  __$$ResponseErrorImplCopyWithImpl(
      _$ResponseErrorImpl _value, $Res Function(_$ResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusWord = null,
  }) {
    return _then(_$ResponseErrorImpl(
      statusWord: null == statusWord
          ? _value.statusWord
          : statusWord // ignore: cast_nullable_to_non_nullable
              as StatusWord,
    ));
  }
}

/// @nodoc

class _$ResponseErrorImpl implements ResponseError {
  const _$ResponseErrorImpl({required this.statusWord});

  @override
  final StatusWord statusWord;

  @override
  String toString() {
    return 'LedgerError.responseError(statusWord: $statusWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseErrorImpl &&
            (identical(other.statusWord, statusWord) ||
                other.statusWord == statusWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseErrorImplCopyWith<_$ResponseErrorImpl> get copyWith =>
      __$$ResponseErrorImplCopyWithImpl<_$ResponseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String origMessage) connectionError,
    required TResult Function(StatusWord statusWord) responseError,
  }) {
    return responseError(statusWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String origMessage)? connectionError,
    TResult? Function(StatusWord statusWord)? responseError,
  }) {
    return responseError?.call(statusWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String origMessage)? connectionError,
    TResult Function(StatusWord statusWord)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(statusWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(ResponseError value) responseError,
  }) {
    return responseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(ResponseError value)? responseError,
  }) {
    return responseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(this);
    }
    return orElse();
  }
}

abstract class ResponseError implements LedgerError {
  const factory ResponseError({required final StatusWord statusWord}) =
      _$ResponseErrorImpl;

  StatusWord get statusWord;
  @JsonKey(ignore: true)
  _$$ResponseErrorImplCopyWith<_$ResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
