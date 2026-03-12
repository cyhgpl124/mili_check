// lib/features/security_check/presentation/bloc/security_state.dart
part of 'security_bloc.dart';

/// SecurityBloc이 UI로 방출할 수 있는 모든 상태의 기본 클래스입니다.
abstract class SecurityState {}

/// Bloc이 처음 생성되었을 때의 초기 상태입니다.
class SecurityInitial extends SecurityState {}

/// 보안 점검이 진행 중이거나 데이터를 불러오는 중일 때의 상태입니다.
/// (모던한 UI에서는 무거운 로딩 창 대신 가벼운 스켈레톤이나 인디케이터로 표현할 수 있습니다.)
class SecurityLoading extends SecurityState {}

/// 보안 점검이 성공적으로 완료되었을 때의 상태입니다.
class SecurityCheckSuccess extends SecurityState {
  final SecurityRecord record;

  SecurityCheckSuccess(this.record);
}

/// DB에 저장된 보안 점검 히스토리 목록을 성공적으로 불러왔을 때의 상태입니다.
class SecurityHistoryLoaded extends SecurityState {
  final List<SecurityRecord> history;

  SecurityHistoryLoaded(this.history);
}

/// 점검 중 또는 데이터 로드 중 오류가 발생했을 때의 상태입니다.
class SecurityError extends SecurityState {
  final String message;

  SecurityError(this.message);
}