import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_record.freezed.dart';
part 'security_record.g.dart';

@freezed
class SecurityRecord with _$SecurityRecord {
  const factory SecurityRecord({
    required String id,
    required DateTime checkedAt,
    required bool isRooted,
    required bool hasMalware,
    required String statusMessage, // 점검 결과와 안전도 판별의 인과관계를 설명하는 필드
  }) = _SecurityRecord;

  factory SecurityRecord.fromJson(Map<String, dynamic> json) =>
      _$SecurityRecordFromJson(json);
}