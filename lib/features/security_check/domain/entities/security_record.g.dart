// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecurityRecordImpl _$$SecurityRecordImplFromJson(Map<String, dynamic> json) =>
    _$SecurityRecordImpl(
      id: json['id'] as String,
      checkedAt: DateTime.parse(json['checkedAt'] as String),
      isRooted: json['isRooted'] as bool,
      hasMalware: json['hasMalware'] as bool,
      statusMessage: json['statusMessage'] as String,
    );

Map<String, dynamic> _$$SecurityRecordImplToJson(
        _$SecurityRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checkedAt': instance.checkedAt.toIso8601String(),
      'isRooted': instance.isRooted,
      'hasMalware': instance.hasMalware,
      'statusMessage': instance.statusMessage,
    };
