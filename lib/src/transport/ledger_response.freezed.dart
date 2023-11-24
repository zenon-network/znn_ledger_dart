// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerResponse _$LedgerResponseFromJson(Map<String, dynamic> json) {
  return _LedgerResponse.fromJson(json);
}

/// @nodoc
mixin _$LedgerResponse {
  List<int> get data => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: StatusWord.unknownError)
  StatusWord get statusWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerResponseCopyWith<LedgerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerResponseCopyWith<$Res> {
  factory $LedgerResponseCopyWith(
          LedgerResponse value, $Res Function(LedgerResponse) then) =
      _$LedgerResponseCopyWithImpl<$Res, LedgerResponse>;
  @useResult
  $Res call(
      {List<int> data,
      @JsonKey(unknownEnumValue: StatusWord.unknownError)
      StatusWord statusWord});
}

/// @nodoc
class _$LedgerResponseCopyWithImpl<$Res, $Val extends LedgerResponse>
    implements $LedgerResponseCopyWith<$Res> {
  _$LedgerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? statusWord = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
      statusWord: null == statusWord
          ? _value.statusWord
          : statusWord // ignore: cast_nullable_to_non_nullable
              as StatusWord,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LedgerResponseImplCopyWith<$Res>
    implements $LedgerResponseCopyWith<$Res> {
  factory _$$LedgerResponseImplCopyWith(_$LedgerResponseImpl value,
          $Res Function(_$LedgerResponseImpl) then) =
      __$$LedgerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> data,
      @JsonKey(unknownEnumValue: StatusWord.unknownError)
      StatusWord statusWord});
}

/// @nodoc
class __$$LedgerResponseImplCopyWithImpl<$Res>
    extends _$LedgerResponseCopyWithImpl<$Res, _$LedgerResponseImpl>
    implements _$$LedgerResponseImplCopyWith<$Res> {
  __$$LedgerResponseImplCopyWithImpl(
      _$LedgerResponseImpl _value, $Res Function(_$LedgerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? statusWord = null,
  }) {
    return _then(_$LedgerResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
      statusWord: null == statusWord
          ? _value.statusWord
          : statusWord // ignore: cast_nullable_to_non_nullable
              as StatusWord,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$LedgerResponseImpl implements _LedgerResponse {
  const _$LedgerResponseImpl(
      {required final List<int> data,
      @JsonKey(unknownEnumValue: StatusWord.unknownError)
      required this.statusWord})
      : _data = data;

  factory _$LedgerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerResponseImplFromJson(json);

  final List<int> _data;
  @override
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(unknownEnumValue: StatusWord.unknownError)
  final StatusWord statusWord;

  @override
  String toString() {
    return 'LedgerResponse(data: $data, statusWord: $statusWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.statusWord, statusWord) ||
                other.statusWord == statusWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), statusWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerResponseImplCopyWith<_$LedgerResponseImpl> get copyWith =>
      __$$LedgerResponseImplCopyWithImpl<_$LedgerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerResponseImplToJson(
      this,
    );
  }
}

abstract class _LedgerResponse implements LedgerResponse {
  const factory _LedgerResponse(
      {required final List<int> data,
      @JsonKey(unknownEnumValue: StatusWord.unknownError)
      required final StatusWord statusWord}) = _$LedgerResponseImpl;

  factory _LedgerResponse.fromJson(Map<String, dynamic> json) =
      _$LedgerResponseImpl.fromJson;

  @override
  List<int> get data;
  @override
  @JsonKey(unknownEnumValue: StatusWord.unknownError)
  StatusWord get statusWord;
  @override
  @JsonKey(ignore: true)
  _$$LedgerResponseImplCopyWith<_$LedgerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
