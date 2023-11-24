// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execution_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExecutionResultOkImpl _$$ExecutionResultOkImplFromJson(
        Map<String, dynamic> json) =>
    _$ExecutionResultOkImpl(
      json['data'],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExecutionResultOkImplToJson(
        _$ExecutionResultOkImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$ExecutionResultErrImpl _$$ExecutionResultErrImplFromJson(
        Map<String, dynamic> json) =>
    _$ExecutionResultErrImpl(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExecutionResultErrImplToJson(
        _$ExecutionResultErrImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };
