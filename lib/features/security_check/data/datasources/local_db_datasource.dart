import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:injectable/injectable.dart';

part 'local_db_datasource.g.dart';

// DB 테이블 정의
class SecurityRecords extends Table {
  TextColumn get id => text()();
  DateTimeColumn get checkedAt => dateTime()();
  BoolColumn get isRooted => boolean()();
  BoolColumn get hasMalware => boolean()();
  TextColumn get statusMessage => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@LazySingleton()
@DriftDatabase(tables: [SecurityRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'milicheck_secure.db'));

    // 지침 준수: SQLCipher를 통한 암호화 적용
    // 실제 운영 시에는 'secure_key'를 flutter_secure_storage에서 가져와야 함
    return NativeDatabase.createInBackground(
      file,
      setup: (rawDb) {
        rawDb.execute("PRAGMA key = 'milicheck_ultra_secure_password';");
      },
    );
  });
}