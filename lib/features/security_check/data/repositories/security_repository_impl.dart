import 'package:injectable/injectable.dart';
import '../../domain/entities/security_record.dart';
import '../../domain/repositories/security_repository.dart';
import '../datasources/local_db_datasource.dart' hide SecurityRecord;
import 'package:drift/drift.dart';

@LazySingleton(as: SecurityRepository)
class SecurityRepositoryImpl implements SecurityRepository {
  final AppDatabase _db;

  SecurityRepositoryImpl(this._db);

  @override
  Future<SecurityRecord> performSecurityCheck() async {
    // 실제 하드웨어 로직 대신 우선 결과 생성 (추후 IoT 연동)
    final now = DateTime.now();
    return SecurityRecord(
      id: now.millisecondsSinceEpoch.toString(),
      checkedAt: now,
      isRooted: false,
      hasMalware: false,
      statusMessage: "정상: 보안 위협이 발견되지 않았습니다.",
    );
  }

  @override
  Future<void> saveSecurityRecord(SecurityRecord record) async {
    await _db.into(_db.securityRecords).insert(
          SecurityRecordsCompanion.insert(
            id: record.id,
            checkedAt: record.checkedAt,
            isRooted: record.isRooted,
            hasMalware: record.hasMalware,
            statusMessage: record.statusMessage,
          ),
        );
  }

  @override
  Future<List<SecurityRecord>> getSecurityHistory() async {
    final rows = await _db.select(_db.securityRecords).get();
    return rows
        .map((row) => SecurityRecord(
              id: row.id,
              checkedAt: row.checkedAt,
              isRooted: row.isRooted,
              hasMalware: row.hasMalware,
              statusMessage: row.statusMessage,
            ))
        .toList();
  }
}
