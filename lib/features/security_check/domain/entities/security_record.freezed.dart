// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecurityRecord _$SecurityRecordFromJson(Map<String, dynamic> json) {
  return _SecurityRecord.fromJson(json);
}

/// @nodoc
mixin _$SecurityRecord {
  String get id => throw _privateConstructorUsedError;
  DateTime get checkedAt => throw _privateConstructorUsedError;
  bool get isRooted => throw _privateConstructorUsedError;
  bool get hasMalware => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityRecordCopyWith<SecurityRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityRecordCopyWith<$Res> {
  factory $SecurityRecordCopyWith(
          SecurityRecord value, $Res Function(SecurityRecord) then) =
      _$SecurityRecordCopyWithImpl<$Res, SecurityRecord>;
  @useResult
  $Res call(
      {String id,
      DateTime checkedAt,
      bool isRooted,
      bool hasMalware,
      String statusMessage});
}

/// @nodoc
class _$SecurityRecordCopyWithImpl<$Res, $Val extends SecurityRecord>
    implements $SecurityRecordCopyWith<$Res> {
  _$SecurityRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? checkedAt = null,
    Object? isRooted = null,
    Object? hasMalware = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      checkedAt: null == checkedAt
          ? _value.checkedAt
          : checkedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRooted: null == isRooted
          ? _value.isRooted
          : isRooted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMalware: null == hasMalware
          ? _value.hasMalware
          : hasMalware // ignore: cast_nullable_to_non_nullable
              as bool,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityRecordImplCopyWith<$Res>
    implements $SecurityRecordCopyWith<$Res> {
  factory _$$SecurityRecordImplCopyWith(_$SecurityRecordImpl value,
          $Res Function(_$SecurityRecordImpl) then) =
      __$$SecurityRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime checkedAt,
      bool isRooted,
      bool hasMalware,
      String statusMessage});
}

/// @nodoc
class __$$SecurityRecordImplCopyWithImpl<$Res>
    extends _$SecurityRecordCopyWithImpl<$Res, _$SecurityRecordImpl>
    implements _$$SecurityRecordImplCopyWith<$Res> {
  __$$SecurityRecordImplCopyWithImpl(
      _$SecurityRecordImpl _value, $Res Function(_$SecurityRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? checkedAt = null,
    Object? isRooted = null,
    Object? hasMalware = null,
    Object? statusMessage = null,
  }) {
    return _then(_$SecurityRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      checkedAt: null == checkedAt
          ? _value.checkedAt
          : checkedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRooted: null == isRooted
          ? _value.isRooted
          : isRooted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMalware: null == hasMalware
          ? _value.hasMalware
          : hasMalware // ignore: cast_nullable_to_non_nullable
              as bool,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityRecordImpl implements _SecurityRecord {
  const _$SecurityRecordImpl(
      {required this.id,
      required this.checkedAt,
      required this.isRooted,
      required this.hasMalware,
      required this.statusMessage});

  factory _$SecurityRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityRecordImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime checkedAt;
  @override
  final bool isRooted;
  @override
  final bool hasMalware;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'SecurityRecord(id: $id, checkedAt: $checkedAt, isRooted: $isRooted, hasMalware: $hasMalware, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checkedAt, checkedAt) ||
                other.checkedAt == checkedAt) &&
            (identical(other.isRooted, isRooted) ||
                other.isRooted == isRooted) &&
            (identical(other.hasMalware, hasMalware) ||
                other.hasMalware == hasMalware) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, checkedAt, isRooted, hasMalware, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityRecordImplCopyWith<_$SecurityRecordImpl> get copyWith =>
      __$$SecurityRecordImplCopyWithImpl<_$SecurityRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityRecordImplToJson(
      this,
    );
  }
}

abstract class _SecurityRecord implements SecurityRecord {
  const factory _SecurityRecord(
      {required final String id,
      required final DateTime checkedAt,
      required final bool isRooted,
      required final bool hasMalware,
      required final String statusMessage}) = _$SecurityRecordImpl;

  factory _SecurityRecord.fromJson(Map<String, dynamic> json) =
      _$SecurityRecordImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get checkedAt;
  @override
  bool get isRooted;
  @override
  bool get hasMalware;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$SecurityRecordImplCopyWith<_$SecurityRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
