// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'execution_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExecutionResult _$ExecutionResultFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ok':
      return _ExecutionResultOk.fromJson(json);
    case 'err':
      return _ExecutionResultErr.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ExecutionResult',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ExecutionResult {
  dynamic get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) ok,
    required TResult Function(String data) err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? ok,
    TResult? Function(String data)? err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? ok,
    TResult Function(String data)? err,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExecutionResultOk value) ok,
    required TResult Function(_ExecutionResultErr value) err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExecutionResultOk value)? ok,
    TResult? Function(_ExecutionResultErr value)? err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExecutionResultOk value)? ok,
    TResult Function(_ExecutionResultErr value)? err,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecutionResultCopyWith<$Res> {
  factory $ExecutionResultCopyWith(
          ExecutionResult value, $Res Function(ExecutionResult) then) =
      _$ExecutionResultCopyWithImpl<$Res, ExecutionResult>;
}

/// @nodoc
class _$ExecutionResultCopyWithImpl<$Res, $Val extends ExecutionResult>
    implements $ExecutionResultCopyWith<$Res> {
  _$ExecutionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExecutionResultOkImplCopyWith<$Res> {
  factory _$$ExecutionResultOkImplCopyWith(_$ExecutionResultOkImpl value,
          $Res Function(_$ExecutionResultOkImpl) then) =
      __$$ExecutionResultOkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$ExecutionResultOkImplCopyWithImpl<$Res>
    extends _$ExecutionResultCopyWithImpl<$Res, _$ExecutionResultOkImpl>
    implements _$$ExecutionResultOkImplCopyWith<$Res> {
  __$$ExecutionResultOkImplCopyWithImpl(_$ExecutionResultOkImpl _value,
      $Res Function(_$ExecutionResultOkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ExecutionResultOkImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExecutionResultOkImpl extends _ExecutionResultOk {
  const _$ExecutionResultOkImpl(this.data, {final String? $type})
      : $type = $type ?? 'ok',
        super._();

  factory _$ExecutionResultOkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExecutionResultOkImplFromJson(json);

  @override
  final dynamic data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ExecutionResult.ok(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecutionResultOkImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecutionResultOkImplCopyWith<_$ExecutionResultOkImpl> get copyWith =>
      __$$ExecutionResultOkImplCopyWithImpl<_$ExecutionResultOkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) ok,
    required TResult Function(String data) err,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? ok,
    TResult? Function(String data)? err,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? ok,
    TResult Function(String data)? err,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExecutionResultOk value) ok,
    required TResult Function(_ExecutionResultErr value) err,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExecutionResultOk value)? ok,
    TResult? Function(_ExecutionResultErr value)? err,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExecutionResultOk value)? ok,
    TResult Function(_ExecutionResultErr value)? err,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExecutionResultOkImplToJson(
      this,
    );
  }
}

abstract class _ExecutionResultOk extends ExecutionResult {
  const factory _ExecutionResultOk(final dynamic data) =
      _$ExecutionResultOkImpl;
  const _ExecutionResultOk._() : super._();

  factory _ExecutionResultOk.fromJson(Map<String, dynamic> json) =
      _$ExecutionResultOkImpl.fromJson;

  @override
  dynamic get data;
  @JsonKey(ignore: true)
  _$$ExecutionResultOkImplCopyWith<_$ExecutionResultOkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExecutionResultErrImplCopyWith<$Res> {
  factory _$$ExecutionResultErrImplCopyWith(_$ExecutionResultErrImpl value,
          $Res Function(_$ExecutionResultErrImpl) then) =
      __$$ExecutionResultErrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$ExecutionResultErrImplCopyWithImpl<$Res>
    extends _$ExecutionResultCopyWithImpl<$Res, _$ExecutionResultErrImpl>
    implements _$$ExecutionResultErrImplCopyWith<$Res> {
  __$$ExecutionResultErrImplCopyWithImpl(_$ExecutionResultErrImpl _value,
      $Res Function(_$ExecutionResultErrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ExecutionResultErrImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExecutionResultErrImpl extends _ExecutionResultErr {
  const _$ExecutionResultErrImpl(this.data, {final String? $type})
      : $type = $type ?? 'err',
        super._();

  factory _$ExecutionResultErrImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExecutionResultErrImplFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ExecutionResult.err(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecutionResultErrImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecutionResultErrImplCopyWith<_$ExecutionResultErrImpl> get copyWith =>
      __$$ExecutionResultErrImplCopyWithImpl<_$ExecutionResultErrImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) ok,
    required TResult Function(String data) err,
  }) {
    return err(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? ok,
    TResult? Function(String data)? err,
  }) {
    return err?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? ok,
    TResult Function(String data)? err,
    required TResult orElse(),
  }) {
    if (err != null) {
      return err(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExecutionResultOk value) ok,
    required TResult Function(_ExecutionResultErr value) err,
  }) {
    return err(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExecutionResultOk value)? ok,
    TResult? Function(_ExecutionResultErr value)? err,
  }) {
    return err?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExecutionResultOk value)? ok,
    TResult Function(_ExecutionResultErr value)? err,
    required TResult orElse(),
  }) {
    if (err != null) {
      return err(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExecutionResultErrImplToJson(
      this,
    );
  }
}

abstract class _ExecutionResultErr extends ExecutionResult {
  const factory _ExecutionResultErr(final String data) =
      _$ExecutionResultErrImpl;
  const _ExecutionResultErr._() : super._();

  factory _ExecutionResultErr.fromJson(Map<String, dynamic> json) =
      _$ExecutionResultErrImpl.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$ExecutionResultErrImplCopyWith<_$ExecutionResultErrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
