// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_db_datasource.dart';

// ignore_for_file: type=lint
class $SecurityRecordsTable extends SecurityRecords
    with TableInfo<$SecurityRecordsTable, SecurityRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SecurityRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _checkedAtMeta =
      const VerificationMeta('checkedAt');
  @override
  late final GeneratedColumn<DateTime> checkedAt = GeneratedColumn<DateTime>(
      'checked_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isRootedMeta =
      const VerificationMeta('isRooted');
  @override
  late final GeneratedColumn<bool> isRooted = GeneratedColumn<bool>(
      'is_rooted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_rooted" IN (0, 1))'));
  static const VerificationMeta _hasMalwareMeta =
      const VerificationMeta('hasMalware');
  @override
  late final GeneratedColumn<bool> hasMalware = GeneratedColumn<bool>(
      'has_malware', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_malware" IN (0, 1))'));
  static const VerificationMeta _statusMessageMeta =
      const VerificationMeta('statusMessage');
  @override
  late final GeneratedColumn<String> statusMessage = GeneratedColumn<String>(
      'status_message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, checkedAt, isRooted, hasMalware, statusMessage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'security_records';
  @override
  VerificationContext validateIntegrity(Insertable<SecurityRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('checked_at')) {
      context.handle(_checkedAtMeta,
          checkedAt.isAcceptableOrUnknown(data['checked_at']!, _checkedAtMeta));
    } else if (isInserting) {
      context.missing(_checkedAtMeta);
    }
    if (data.containsKey('is_rooted')) {
      context.handle(_isRootedMeta,
          isRooted.isAcceptableOrUnknown(data['is_rooted']!, _isRootedMeta));
    } else if (isInserting) {
      context.missing(_isRootedMeta);
    }
    if (data.containsKey('has_malware')) {
      context.handle(
          _hasMalwareMeta,
          hasMalware.isAcceptableOrUnknown(
              data['has_malware']!, _hasMalwareMeta));
    } else if (isInserting) {
      context.missing(_hasMalwareMeta);
    }
    if (data.containsKey('status_message')) {
      context.handle(
          _statusMessageMeta,
          statusMessage.isAcceptableOrUnknown(
              data['status_message']!, _statusMessageMeta));
    } else if (isInserting) {
      context.missing(_statusMessageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SecurityRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SecurityRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      checkedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}checked_at'])!,
      isRooted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_rooted'])!,
      hasMalware: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_malware'])!,
      statusMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status_message'])!,
    );
  }

  @override
  $SecurityRecordsTable createAlias(String alias) {
    return $SecurityRecordsTable(attachedDatabase, alias);
  }
}

class SecurityRecord extends DataClass implements Insertable<SecurityRecord> {
  final String id;
  final DateTime checkedAt;
  final bool isRooted;
  final bool hasMalware;
  final String statusMessage;
  const SecurityRecord(
      {required this.id,
      required this.checkedAt,
      required this.isRooted,
      required this.hasMalware,
      required this.statusMessage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['checked_at'] = Variable<DateTime>(checkedAt);
    map['is_rooted'] = Variable<bool>(isRooted);
    map['has_malware'] = Variable<bool>(hasMalware);
    map['status_message'] = Variable<String>(statusMessage);
    return map;
  }

  SecurityRecordsCompanion toCompanion(bool nullToAbsent) {
    return SecurityRecordsCompanion(
      id: Value(id),
      checkedAt: Value(checkedAt),
      isRooted: Value(isRooted),
      hasMalware: Value(hasMalware),
      statusMessage: Value(statusMessage),
    );
  }

  factory SecurityRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SecurityRecord(
      id: serializer.fromJson<String>(json['id']),
      checkedAt: serializer.fromJson<DateTime>(json['checkedAt']),
      isRooted: serializer.fromJson<bool>(json['isRooted']),
      hasMalware: serializer.fromJson<bool>(json['hasMalware']),
      statusMessage: serializer.fromJson<String>(json['statusMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'checkedAt': serializer.toJson<DateTime>(checkedAt),
      'isRooted': serializer.toJson<bool>(isRooted),
      'hasMalware': serializer.toJson<bool>(hasMalware),
      'statusMessage': serializer.toJson<String>(statusMessage),
    };
  }

  SecurityRecord copyWith(
          {String? id,
          DateTime? checkedAt,
          bool? isRooted,
          bool? hasMalware,
          String? statusMessage}) =>
      SecurityRecord(
        id: id ?? this.id,
        checkedAt: checkedAt ?? this.checkedAt,
        isRooted: isRooted ?? this.isRooted,
        hasMalware: hasMalware ?? this.hasMalware,
        statusMessage: statusMessage ?? this.statusMessage,
      );
  SecurityRecord copyWithCompanion(SecurityRecordsCompanion data) {
    return SecurityRecord(
      id: data.id.present ? data.id.value : this.id,
      checkedAt: data.checkedAt.present ? data.checkedAt.value : this.checkedAt,
      isRooted: data.isRooted.present ? data.isRooted.value : this.isRooted,
      hasMalware:
          data.hasMalware.present ? data.hasMalware.value : this.hasMalware,
      statusMessage: data.statusMessage.present
          ? data.statusMessage.value
          : this.statusMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SecurityRecord(')
          ..write('id: $id, ')
          ..write('checkedAt: $checkedAt, ')
          ..write('isRooted: $isRooted, ')
          ..write('hasMalware: $hasMalware, ')
          ..write('statusMessage: $statusMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, checkedAt, isRooted, hasMalware, statusMessage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SecurityRecord &&
          other.id == this.id &&
          other.checkedAt == this.checkedAt &&
          other.isRooted == this.isRooted &&
          other.hasMalware == this.hasMalware &&
          other.statusMessage == this.statusMessage);
}

class SecurityRecordsCompanion extends UpdateCompanion<SecurityRecord> {
  final Value<String> id;
  final Value<DateTime> checkedAt;
  final Value<bool> isRooted;
  final Value<bool> hasMalware;
  final Value<String> statusMessage;
  final Value<int> rowid;
  const SecurityRecordsCompanion({
    this.id = const Value.absent(),
    this.checkedAt = const Value.absent(),
    this.isRooted = const Value.absent(),
    this.hasMalware = const Value.absent(),
    this.statusMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SecurityRecordsCompanion.insert({
    required String id,
    required DateTime checkedAt,
    required bool isRooted,
    required bool hasMalware,
    required String statusMessage,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        checkedAt = Value(checkedAt),
        isRooted = Value(isRooted),
        hasMalware = Value(hasMalware),
        statusMessage = Value(statusMessage);
  static Insertable<SecurityRecord> custom({
    Expression<String>? id,
    Expression<DateTime>? checkedAt,
    Expression<bool>? isRooted,
    Expression<bool>? hasMalware,
    Expression<String>? statusMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (checkedAt != null) 'checked_at': checkedAt,
      if (isRooted != null) 'is_rooted': isRooted,
      if (hasMalware != null) 'has_malware': hasMalware,
      if (statusMessage != null) 'status_message': statusMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SecurityRecordsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? checkedAt,
      Value<bool>? isRooted,
      Value<bool>? hasMalware,
      Value<String>? statusMessage,
      Value<int>? rowid}) {
    return SecurityRecordsCompanion(
      id: id ?? this.id,
      checkedAt: checkedAt ?? this.checkedAt,
      isRooted: isRooted ?? this.isRooted,
      hasMalware: hasMalware ?? this.hasMalware,
      statusMessage: statusMessage ?? this.statusMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (checkedAt.present) {
      map['checked_at'] = Variable<DateTime>(checkedAt.value);
    }
    if (isRooted.present) {
      map['is_rooted'] = Variable<bool>(isRooted.value);
    }
    if (hasMalware.present) {
      map['has_malware'] = Variable<bool>(hasMalware.value);
    }
    if (statusMessage.present) {
      map['status_message'] = Variable<String>(statusMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SecurityRecordsCompanion(')
          ..write('id: $id, ')
          ..write('checkedAt: $checkedAt, ')
          ..write('isRooted: $isRooted, ')
          ..write('hasMalware: $hasMalware, ')
          ..write('statusMessage: $statusMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SecurityRecordsTable securityRecords =
      $SecurityRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [securityRecords];
}

typedef $$SecurityRecordsTableCreateCompanionBuilder = SecurityRecordsCompanion
    Function({
  required String id,
  required DateTime checkedAt,
  required bool isRooted,
  required bool hasMalware,
  required String statusMessage,
  Value<int> rowid,
});
typedef $$SecurityRecordsTableUpdateCompanionBuilder = SecurityRecordsCompanion
    Function({
  Value<String> id,
  Value<DateTime> checkedAt,
  Value<bool> isRooted,
  Value<bool> hasMalware,
  Value<String> statusMessage,
  Value<int> rowid,
});

class $$SecurityRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SecurityRecordsTable,
    SecurityRecord,
    $$SecurityRecordsTableFilterComposer,
    $$SecurityRecordsTableOrderingComposer,
    $$SecurityRecordsTableCreateCompanionBuilder,
    $$SecurityRecordsTableUpdateCompanionBuilder> {
  $$SecurityRecordsTableTableManager(
      _$AppDatabase db, $SecurityRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SecurityRecordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SecurityRecordsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> checkedAt = const Value.absent(),
            Value<bool> isRooted = const Value.absent(),
            Value<bool> hasMalware = const Value.absent(),
            Value<String> statusMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SecurityRecordsCompanion(
            id: id,
            checkedAt: checkedAt,
            isRooted: isRooted,
            hasMalware: hasMalware,
            statusMessage: statusMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime checkedAt,
            required bool isRooted,
            required bool hasMalware,
            required String statusMessage,
            Value<int> rowid = const Value.absent(),
          }) =>
              SecurityRecordsCompanion.insert(
            id: id,
            checkedAt: checkedAt,
            isRooted: isRooted,
            hasMalware: hasMalware,
            statusMessage: statusMessage,
            rowid: rowid,
          ),
        ));
}

class $$SecurityRecordsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SecurityRecordsTable> {
  $$SecurityRecordsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get checkedAt => $state.composableBuilder(
      column: $state.table.checkedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRooted => $state.composableBuilder(
      column: $state.table.isRooted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasMalware => $state.composableBuilder(
      column: $state.table.hasMalware,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get statusMessage => $state.composableBuilder(
      column: $state.table.statusMessage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SecurityRecordsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SecurityRecordsTable> {
  $$SecurityRecordsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get checkedAt => $state.composableBuilder(
      column: $state.table.checkedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRooted => $state.composableBuilder(
      column: $state.table.isRooted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasMalware => $state.composableBuilder(
      column: $state.table.hasMalware,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get statusMessage => $state.composableBuilder(
      column: $state.table.statusMessage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SecurityRecordsTableTableManager get securityRecords =>
      $$SecurityRecordsTableTableManager(_db, _db.securityRecords);
}
