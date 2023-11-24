// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerDevice _$LedgerDeviceFromJson(Map<String, dynamic> json) {
  return _LedgerDevice.fromJson(json);
}

/// @nodoc
mixin _$LedgerDevice {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerDeviceCopyWith<LedgerDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerDeviceCopyWith<$Res> {
  factory $LedgerDeviceCopyWith(
          LedgerDevice value, $Res Function(LedgerDevice) then) =
      _$LedgerDeviceCopyWithImpl<$Res, LedgerDevice>;
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class _$LedgerDeviceCopyWithImpl<$Res, $Val extends LedgerDevice>
    implements $LedgerDeviceCopyWith<$Res> {
  _$LedgerDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LedgerDeviceImplCopyWith<$Res>
    implements $LedgerDeviceCopyWith<$Res> {
  factory _$$LedgerDeviceImplCopyWith(
          _$LedgerDeviceImpl value, $Res Function(_$LedgerDeviceImpl) then) =
      __$$LedgerDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class __$$LedgerDeviceImplCopyWithImpl<$Res>
    extends _$LedgerDeviceCopyWithImpl<$Res, _$LedgerDeviceImpl>
    implements _$$LedgerDeviceImplCopyWith<$Res> {
  __$$LedgerDeviceImplCopyWithImpl(
      _$LedgerDeviceImpl _value, $Res Function(_$LedgerDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_$LedgerDeviceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$LedgerDeviceImpl implements _LedgerDevice {
  const _$LedgerDeviceImpl({required this.name, required this.path});

  factory _$LedgerDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerDeviceImplFromJson(json);

  @override
  final String name;
  @override
  final String path;

  @override
  String toString() {
    return 'LedgerDevice(name: $name, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerDeviceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerDeviceImplCopyWith<_$LedgerDeviceImpl> get copyWith =>
      __$$LedgerDeviceImplCopyWithImpl<_$LedgerDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerDeviceImplToJson(
      this,
    );
  }
}

abstract class _LedgerDevice implements LedgerDevice {
  const factory _LedgerDevice(
      {required final String name,
      required final String path}) = _$LedgerDeviceImpl;

  factory _LedgerDevice.fromJson(Map<String, dynamic> json) =
      _$LedgerDeviceImpl.fromJson;

  @override
  String get name;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$LedgerDeviceImplCopyWith<_$LedgerDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
