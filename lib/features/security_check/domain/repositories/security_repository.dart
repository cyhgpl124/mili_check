import '../entities/security_record.dart';

abstract class SecurityRepository {
  /// 기기의 물리적/소프트웨어적 보안 상태를 분석합니다.
  Future<SecurityRecord> performSecurityCheck();

  /// 보안 점검 이력을 로컬 암호화 DB에 저장합니다.
  Future<void> saveSecurityRecord(SecurityRecord record);

  /// 저장된 모든 보안 이력을 가져옵니다.
  Future<List<SecurityRecord>> getSecurityHistory();
}